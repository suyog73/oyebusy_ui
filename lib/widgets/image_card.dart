// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.image,
    required this.text,
    this.width = 160,
    this.height = 170,
    this.containerWidth,
  }) : super(key: key);

  final String image, text;
  final double width, height;
  final double? containerWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        width: containerWidth,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFED008C),
          ),
        ),
        child: Card(
          child: Column(
            children: [
              Container(
                color: Color(0xFFE7EDF0),
                width: containerWidth,
                child: Image(
                  image: AssetImage('assets/images/$image.png'),
                  width: width,
                  height: height,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                color: Color(0xFFED008C),
                alignment: Alignment.center,
                width: containerWidth ?? width,
                padding: EdgeInsets.all(9),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
