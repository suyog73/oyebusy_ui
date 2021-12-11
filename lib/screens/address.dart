// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios),
                      Text(
                        'Address',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Icon(
                    Icons.shopping_cart,
                    size: 20,
                  )
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  color: Color(0xFFF3F4F6),
                  child: Column(
                    children: [
                      TextField(
                        decoration:
                            InputDecoration(hintText: 'Select an Address'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, left: 15, right: 15),
                        child: Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff005CB1),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Add a new address',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff005CB1),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                Icons.add,
                                size: 28,
                                color: Color(0xff005CB1),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
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
