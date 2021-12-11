// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oyebusy_ui/widgets/bottom_field.dart';
import 'package:oyebusy_ui/widgets/image_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/images/top.png'),
                height: 135,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageCard(text: "FITNESS", image: 'image1'),
                  ImageCard(text: "Skin", image: 'image2'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageCard(text: "Hair", image: 'image3'),
                  ImageCard(text: "MakeUp", image: 'image4'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageCard(text: "Nail Art", image: 'image5'),
                  ImageCard(text: "Manicure & Pedicure", image: 'image6'),
                ],
              ),
              ImageCard(
                text: 'Short Term Course',
                image: 'bottom',
                width: 102,
                height: 130,
                containerWidth: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 19)
                          .copyWith(right: 9),
                      decoration: BoxDecoration(
                        color: Color(0xFF004CAA),
                      ),
                      child: Text(
                        'Safety Measurements',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BottomField(text: 'Use of Mask & Gloves'),
                          BottomField(text: 'Following W.H.O Guidelines'),
                          BottomField(text: 'Safety with Aarogya Setu App'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
