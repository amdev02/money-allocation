import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:money_allocations/thema.dart';
import 'package:money_allocations/wigdets/allocation_card.dart';

class ChooseAllocationPage extends StatelessWidget {
  const ChooseAllocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget back() {
      return GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          margin: EdgeInsets.only(
            top: 46,
            left: 32,
          ),
          width: 22,
          height: 22,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icon_back.png'),
            ),
          ),
        ),
      );
    }

    Widget header() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 98,
              height: 98,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icon_logo.png"),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "Choose Allocations",
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    Widget allocation() {
      return Column(
        children: [
          AllocationCard(
            imageUrl: "assets/icon_bitcoin_2.png",
          ),
          AllocationCard(
            imageUrl: "assets/icon_bitcoin.png",
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    back(),
                    header(),
                    allocation(),
                    SizedBox(
                      height: 64,
                    ),
                  ],
                ),
              ),
              Container(
                height: 88,
                child: Container(
                  margin: EdgeInsets.only(
                    top: 8,
                    bottom: 14,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_up,
                        size: 24,
                        color: kWhiteColor,
                      ),
                      Text(
                        'Swipe up to buy',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
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
