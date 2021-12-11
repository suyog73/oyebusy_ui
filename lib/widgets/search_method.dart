import 'package:flutter/material.dart';

class SearchMethod extends StatelessWidget {
  const SearchMethod({
    Key? key,
    required this.text,
    this.isSearch = false,
  }) : super(key: key);

  final String text;
  final bool isSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffdadada),
      child: Container(
        width: double.infinity,
        height: 63,
        padding: EdgeInsets.all(14),
        child: Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            '   $text',
            style: TextStyle(
                fontWeight: !isSearch ? FontWeight.w300 : FontWeight.normal,
                fontSize: 15),
          ),
        ),
      ),
    );
  }
}
