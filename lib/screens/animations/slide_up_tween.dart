import 'package:flutter/material.dart';

class SlideUpTween extends StatelessWidget {
  const SlideUpTween({
    Key? key,
    required this.child,
    required this.begin,
    this.duration = const Duration(milliseconds: 550),
    this.curve = Curves.easeOut,
    this.end = const Offset(0, 0),
  }) : super(key: key);

  final Widget child;
  final Duration duration;
  final Curve curve;
  final Offset begin;
  final Offset end;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<Offset>(
      tween: Tween(
        begin: begin,
        end: end,
      ),
      duration: duration,
      builder: (_, value, child) {
        return Transform.translate(
          offset: value,
          child: child,
        );
      },
      child: child,
    );
  }
}
