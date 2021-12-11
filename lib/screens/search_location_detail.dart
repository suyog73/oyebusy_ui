// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:oyebusy_ui/widgets/search_list.dart';
import 'package:oyebusy_ui/widgets/search_method.dart';

class SearchLocationDetail extends StatelessWidget {
  const SearchLocationDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios),
                      Text(
                        'Search Location',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              SearchMethod(text: 'Sector', isSearch: true),
              Column(
                children: [
                  SearchList(text: 'Sector 29, Gurugram, Haryana, India'),
                  Divider(),
                  SearchList(text: 'Sector 14, Gurugram, Haryana, India'),
                  Divider(),
                  SearchList(text: 'Sector 46, Gurugram, Haryana, India'),
                  Divider(),
                  SearchList(text: 'Sector 38, Gurugram, Haryana, India'),
                  Divider(),
                  SearchList(text: 'Sector 56, Gurugram, Haryana, India'),
                  Divider(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
