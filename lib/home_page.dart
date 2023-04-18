import 'package:flutter/material.dart';

import 'colors/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homePageBg,
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Training",
                  style: TextStyle(
                      fontSize: 30,
                      color: AppColor.homePageTitle,
                      fontWeight: FontWeight.w700),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_back_ios,
                  color: AppColor.homePageIcons,
                  size: 20,
                ),
                Icon(
                  Icons.calendar_month,
                  color: AppColor.homePageIcons,
                  size: 20,
                ),
                SizedBox(
                  width: 2,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.homePageIcons,
                  size: 20,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Your Program",
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColor.homePageSubTitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style:
                      TextStyle(color: AppColor.homePageDetail, fontSize: 16),
                ),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 20,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    AppColor.gradientFirst.withOpacity(0.9),
                    AppColor.gradientSecond.withOpacity(0.9)
                  ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(90),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(5, 10),
                        blurRadius: 10,
                        color: AppColor.gradientSecond.withOpacity(0.5))
                  ]),
              child: Container(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Next workout",
                      style: TextStyle(
                          color: AppColor.homePageContainerTxtSm, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Legs Toning",
                      style: TextStyle(
                          color: AppColor.homePageContainerTxtSm, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "and Glutes workout",
                      style: TextStyle(
                          color: AppColor.homePageContainerTxtSm, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.timer,
                          size: 20,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "60 min",
                          style: TextStyle(
                              color: AppColor.homePageContainerTxtSm,
                              fontSize: 12),
                        ),
                        Expanded(child: Container()),
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(4, 4),
                                      blurRadius: 10,
                                      color: AppColor.gradientFirst
                                          .withOpacity(0.6))
                                ]),
                            child: const Icon(
                              Icons.play_circle_fill,
                              color: Colors.white,
                              size: 60,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
