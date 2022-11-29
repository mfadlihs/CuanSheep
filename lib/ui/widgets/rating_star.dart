import 'package:flutter/material.dart';

class RatingStar extends StatefulWidget {
  final int rating;
  final int max;
  final double size;
  const RatingStar(
      {super.key, required this.rating, this.max = 0, this.size = 12});

  @override
  State<RatingStar> createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.filled(widget.rating, 0).map(
          (e) => Icon(
            Icons.star,
            color: Color(0xffFCCE39),
            size: widget.size,
          ),
        ),
        ...List.filled(
                widget.max - widget.rating >= 0
                    ? widget.max - widget.rating
                    : 0,
                0)
            .map(
          (e) => Icon(
            Icons.star_outline,
            color: Color(0xffFCCE39),
            size: widget.size,
          ),
        ),
      ],
    );
  }
}
