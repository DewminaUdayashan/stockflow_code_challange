// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MockDesign extends StatefulWidget {
  const MockDesign({
    Key? key,
    required this.child,
    this.scaleFactor = 1,
    this.designImagePath,
    this.showOverlay = true,
  }) : super(key: key);
  final Widget child;
  final double scaleFactor;
  final String? designImagePath;
  final bool showOverlay;

  @override
  State<MockDesign> createState() => _MockDesignState();
}

class _MockDesignState extends State<MockDesign> {
  double opacity = 0.2;
  @override
  Widget build(BuildContext context) {
    if (!widget.showOverlay) {
      return widget.child;
    }
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          widget.child,
          if (widget.designImagePath != null) ...[
            Positioned.fill(
              child: IgnorePointer(
                ignoring: true,
                child: Opacity(
                  opacity: opacity,
                  child: Image.asset(
                    widget.designImagePath!,
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ],
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black26,
              child: Slider.adaptive(
                  value: opacity,
                  onChanged: (value) => setState(() => opacity = value)),
            ),
          )
        ],
      ),
    );
  }
}
