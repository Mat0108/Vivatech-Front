import 'dart:math';
import 'package:flutter/material.dart';
import 'package:vivatech/components/color.dart';

class CardMemoire extends StatefulWidget {
  const CardMemoire(
      {super.key,
      required this.url,
      required this.defaulturl,
      required this.cond,
      required this.globalcond,
      required this.callback});

  final String url;
  final String defaulturl;
  final bool cond;
  final bool globalcond;
  final VoidCallback callback;

  @override
  State<CardMemoire> createState() => _Card();
}

class _Card extends State<CardMemoire> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  AnimationStatus _status = AnimationStatus.dismissed;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _animation = Tween(end: 1.0, begin: 0.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _status = status;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()
        ..setEntry(2, 1, 0.0015)
        ..rotateY(pi * _animation.value),
      child: GestureDetector(
          onTap: () {
            if (_status == AnimationStatus.dismissed) {
              _controller.forward();
            } else {
              _controller.reverse();
            }
          },
          child: _animation.value >= 0.5
              ? card(widget.url, widget.cond, widget.callback)
              : card((widget.cond ? widget.url : widget.defaulturl),
                  widget.cond, widget.callback)),
    );
  }

  Widget card(String url, bool cond, VoidCallback callback) {
    return Container(
      decoration: BoxDecoration(
        color: VivatechColor.white,
        border: Border.all(
            color: cond ? VivatechColor.cyan : VivatechColor.blue, width: 3),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      width: 80,
      height: 160,
      child: Container(
          width: 40,
          height: 40,
          child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: IconButton(
                  iconSize: 30, icon: Image.asset(url), onPressed: callback))),
    );
  }
}
