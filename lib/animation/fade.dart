import 'package:flutter/material.dart';

class EntranceFade extends StatefulWidget {
  final Widget child;
  final Duration delay;
  final Duration duration;
  final Offset offset;

  EntranceFade({
    this.child,
    this.delay = const Duration(milliseconds: 0),
    this.duration = const Duration(milliseconds: 400),
    this.offset = const Offset(0.0, 32.0),
  });

  @override
  _EntranceFadeState createState() => _EntranceFadeState();
}

class _EntranceFadeState extends State<EntranceFade>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation dxAnimation;
  Animation dyAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: widget.duration);
    dxAnimation =
        Tween(begin: widget.offset.dx, end: 0.0).animate(animationController);
    dyAnimation =
        Tween(begin: widget.offset.dy, end: 0.0).animate(animationController);
    Future.delayed(widget.delay, () {
      if (this.mounted) animationController.forward();
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) => Opacity(
        opacity: animationController.value,
        child: Transform.translate(
          offset: Offset(dxAnimation.value, dyAnimation.value),
          child: widget.child,
        ),
      ),
    );
  }
}
