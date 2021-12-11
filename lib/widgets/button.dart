import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: 32,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xffFCB001), borderRadius: BorderRadius.circular(5)),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        ),
      ),
    );
  }
}
