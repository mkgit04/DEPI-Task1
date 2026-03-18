import 'package:flutter/material.dart';

class AnimatedCounter extends StatelessWidget {
  final int value;
  final Duration? duration;
  final TextStyle? style;

  const AnimatedCounter({
    super.key,
    required this.value,
    this.duration,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<int>(
      tween: IntTween(begin: 0, end: value),
      curve: Curves.fastEaseInToSlowEaseOut,
      duration: duration ?? const Duration(seconds: 2),
      builder: (context, val, child) {
        return Text(
          "$val",
          style: style ?? TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        );
      },
    );
  }
}
