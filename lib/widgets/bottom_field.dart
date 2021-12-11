// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BottomField extends StatelessWidget {
  const BottomField({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey,
            ),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10.67,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
