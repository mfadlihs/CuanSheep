import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoadingIndicator extends StatefulWidget {
  final double height;
  LoadingIndicator({super.key, this.height = 80});

  @override
  State<LoadingIndicator> createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      height: widget.height,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
