// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:oyebusy_ui/widgets/button.dart';
import 'package:oyebusy_ui/widgets/search_list.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

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
                        'Add Location',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/map.png'),
                    height: 430,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SearchList(text: 'Sector 38, Gurugram, Haryana, India'),
                      Text(
                        'CHANGE',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: Color(0xFF007EC5),
                        ),
                      )
                    ],
                  ),
                  Divider(),
                  SearchList(text: 'Flat/Building/Street'),
                  Divider(),
                  SearchList(text: 'Name'),
                  Divider(),
                  SearchList(text: 'Phone Number'),
                  Divider(),
                  SizedBox(height: 20),
                  Buttons(text: 'Add Address'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
