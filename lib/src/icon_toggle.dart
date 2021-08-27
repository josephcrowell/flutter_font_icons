import 'dart:math' as math;
import 'package:flutter/material.dart';

Widget _defaultTransitionBuilder(Widget child, Animation<double> animation) =>
    ScaleTransition(
      scale: animation,
      child: child,
    );

/// The toggleable icon widget
class IconToggle extends StatefulWidget {
  /// Main constructor for the toggleable icon widget
  IconToggle({
    this.unselectedIcon = Icons.radio_button_unchecked,
    this.selectedIcon = Icons.radio_button_checked,
    this.selectedColor = Colors.blue,
    this.unselectedColor = Colors.grey,
    this.selected = false,
    this.onChanged,
    this.size = 22,
    this.transitionBuilder = _defaultTransitionBuilder,
    this.duration = const Duration(milliseconds: 100),
    this.reverseDuration,
    Key? key,
  }) : super(key: key);

  final IconData selectedIcon;
  final IconData unselectedIcon;
  final Color selectedColor;
  final Color unselectedColor;
  final bool selected;
  final double size;
  final ValueChanged<bool>? onChanged;
  final AnimatedSwitcherTransitionBuilder transitionBuilder;
  final Duration duration;
  final Duration? reverseDuration;

  @override
  _IconToggleState createState() => _IconToggleState();
}

class _IconToggleState extends State<IconToggle>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _position;
  bool _cancel = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      reverseDuration: const Duration(milliseconds: 50),
    );
    _position = CurvedAnimation(parent: _controller, curve: Curves.linear);
    _position.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.dismissed &&
          widget.onChanged != null &&
          _cancel == false) {
        widget.onChanged!(!widget.selected);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (TapDownDetails event) {
        _cancel = false;
        _controller.forward();
      },
      onTapUp: (TapUpDetails event) {
        _controller.reverse();
      },
      onTapCancel: () {
        _cancel = true;
        _controller.reverse();
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: _IconToggleable<double>(
          listenable: _position,
          selectedColor: widget.selectedColor,
          unselectedColor: widget.unselectedColor,
          child: AnimatedSwitcher(
            duration: widget.duration,
            reverseDuration: widget.reverseDuration,
            transitionBuilder: widget.transitionBuilder,
            child: Icon(
              widget.selected ? widget.selectedIcon : widget.unselectedIcon,
              color: widget.selected
                  ? widget.selectedColor
                  : widget.unselectedColor,
              size: widget.size,
              key: ValueKey<bool>(widget.selected),
            ),
          ),
        ),
      ),
    );
  }
}

class _IconToggleable<T> extends AnimatedWidget {
  _IconToggleable({
    required Animation<T> listenable,
    this.selectedColor,
    this.unselectedColor,
    this.child,
  }) : super(listenable: listenable);

  // When IconToggle is selected, this icon color is displayed
  final Color? selectedColor;

  /// When IconToggle is not selected, this icon color is displayed
  final Color? unselectedColor;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _IconPainter(
        position: listenable as Animation<double>,
        selectedColor: selectedColor,
        unselectedColor: unselectedColor,
      ),
      child: child,
    );
  }
}

class _IconPainter extends CustomPainter {
  _IconPainter({
    required this.position,
    this.selectedColor,
    this.unselectedColor,
  });
  final Animation<double> position;
  final Color? selectedColor;
  final Color? unselectedColor;

  double get _value => position.value;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Color.lerp(unselectedColor, selectedColor, _value)!
          .withOpacity(math.min(_value, 0.15))
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), 20 * _value, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
