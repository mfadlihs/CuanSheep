import 'package:flutter/material.dart';

class RatingStar extends StatefulWidget {
  final int rating;
  const RatingStar({super.key, required this.rating});

  @override
  State<RatingStar> createState() => _RatingStarState();
}

class _RatingStarState extends State<RatingStar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Icon(
        //   Icons.star,
        // )
        ...List.filled(widget.rating, 0).map(
          (e) => Icon(
            Icons.star,
            color: Color(0xffEF873D),
            size: 12,
          ),
        ),
      ],
    );
  }
}
