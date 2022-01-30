import 'package:flutter/material.dart';
import 'package:money_allocations/pages/choose_allication_page.dart';
import 'package:money_allocations/thema.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      Widget balance() {
        return Container(
          margin: EdgeInsets.only(
            top: 46,
            left: 32,
            right: 32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Balance",
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "\$510.000",
                style: primaryTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        );
      }

      Widget seeMoney() {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChooseAllocationPage(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "See money allocation",
                  style: blackTextStyle.copyWith(),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                  color: kPrimaryColor,
                ),
              ],
            ),
          ),
        );
      }

      return Container(
        decoration: BoxDecoration(
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            balance(),
            seeMoney(),
          ],
        ),
      );
    }

    Widget card() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 32,
        ),
        child: Container(
          width: 312,
          height: 212,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/icon_card.png"),
            ),
          ),
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 28,
                    top: 28,
                    right: 36,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Card",
                        style: whiteTextStyle,
                      ),
                      Text(
                        "Debit",
                        style: whiteTextStyle,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 33.5,
                    left: 28,
                    right: 36,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "4873 4983 4837 1234",
                        style: whiteTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 6.6,
                      ),
                      Container(
                        width: 10,
                        height: 9,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/icon_ornament_2.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 33.5,
                    left: 28,
                    right: 36,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Asep Dedi Rukmana",
                        style: whiteTextStyle,
                      ),
                      Container(
                        height: 24,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/icon_ornament_1.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget allocate() {
      return Container(
        width: double.infinity,
        height: 61,
        margin: EdgeInsets.only(
          top: 16,
          left: 32,
          right: 32,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: kLightBlueColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$ 50.000",
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: medium,
              ),
            ),
            Container(
              width: 121,
              height: 41,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChooseAllocationPage(),
                    ),
                  );
                },
                child: Text(
                  "Allocate",
                  style: whiteTextStyle.copyWith(
                    fontWeight: semiBold,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          left: 32,
          right: 32,
          top: 16,
        ),
        child: Text(
          "Recenct Allocation",
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget recentAllocation() {
      return Container(
        margin: EdgeInsets.only(
          top: 16,
          left: 27,
          right: 27,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 17,
        ),
        child: Column(
          children: [
            Container(
              width: 58,
              height: 4,
              decoration: BoxDecoration(
                color: kGreyColor,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CardAllocationTile(
              name: "Bitcoin",
              imageUrl: "assets/icon_bitcoin.png",
              dateTime: "12:40 am 21 Jun 2021",
              price: "\$25.00",
              profit: "2,00%",
            ),
            Container(
              width: double.infinity,
              height: 0.5,
              margin: EdgeInsets.symmetric(
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: kGreyColor,
              ),
            ),
            CardAllocationTile(
              name: "Bitcoin",
              imageUrl: "assets/icon_bitcoin_2.png",
              dateTime: "12:40 am 21 Jun 2021",
              price: "\$25.00",
              profit: "2,00%",
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor1,
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            card(),
            allocate(),
            title(),
            recentAllocation(),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class CardAllocationTile extends StatelessWidget {
  final String name;
  final String dateTime;
  final String imageUrl;
  final String profit;
  final String price;
  const CardAllocationTile({
    Key? key,
    required this.name,
    required this.dateTime,
    required this.imageUrl,
    required this.profit,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
                Container(
                  child: Text(
                    dateTime,
                    style: blackTextStyle.copyWith(
                      color: kBlackColor.withOpacity(0.6),
                      fontSize: 8,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                price,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/icon_arrow.png"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    profit,
                    style: lightGreenTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
