import 'package:flutter/material.dart';
import 'package:money_allocations/thema.dart';

class AllocationCard extends StatelessWidget {
  final String imageUrl;

  const AllocationCard({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 17,
            ),
            decoration: BoxDecoration(
              color: kBackgroundColor2,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 1,
                color: kGreyColor,
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 18,
                    right: 18,
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: kGreyColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(imageUrl),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                size: 18,
                                color: kBlackColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tesla, Inc.",
                              style: blackTextStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '623, 71',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: medium,
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'USD',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          'Show Details',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: medium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kAllocateTrans,
                  ),
                  height: 40,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "You want to allocate?",
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "50%",
                            style: blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: medium,
                            ),
                          ),
                          SizedBox(
                            width: 11,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            size: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: RichText(
                    text: TextSpan(
                      text: "Buy ",
                      style: blackTextStyle,
                      children: [
                        TextSpan(
                          text: "38,4302 ",
                          style: blackTextStyle.copyWith(
                            fontWeight: semiBold,
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text: 'shares @ ',
                        ),
                        TextSpan(
                          text: "\$623,71",
                          style: lightGreenTextStyle.copyWith(
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
