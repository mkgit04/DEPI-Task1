import 'package:flutter/material.dart';

class AnimatedBell extends StatefulWidget {
  final String assetPath;
  final double width;
  final double height;
  final Duration duration;
  final double maxAngle;

  const AnimatedBell({
    super.key,
    this.assetPath = "assets/images/bell.png",
    this.width = 32,
    this.height = 32,
    this.duration = const Duration(milliseconds: 360),
    this.maxAngle = 0.18,
  });

  @override
  State<AnimatedBell> createState() => _AnimatedBellState();
}

class _AnimatedBellState extends State<AnimatedBell> {
  bool _forwardWiggle = true;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(
        begin: _forwardWiggle ? -widget.maxAngle : widget.maxAngle,
        end: _forwardWiggle ? widget.maxAngle : -widget.maxAngle,
      ),
      duration: widget.duration,
      curve: Curves.easeInOut,
      onEnd: () {
        if (!mounted) return;
        setState(() => _forwardWiggle = !_forwardWiggle);
      },
      builder: (context, angle, child) {
        return Transform.rotate(angle: angle, child: child);
      },
      child: Image.asset(
        widget.assetPath,
        width: widget.width,
        height: widget.height,
      ),
    );
  }
}
