import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yoga_app_flutter/colors/colors.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List videoInfo = [];

  _initData() {
    DefaultAssetBundle.of(context).loadString("json/videoInfo.json").then((
        value) {
      videoInfo = json.decode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColor.gradientFirst.withOpacity(0.9),
            AppColor.gradientSecond
          ], begin: const FractionalOffset(0.0, 0.4), end: Alignment.topRight),
        ),
        child: Column(
          children: [
            Container(
              height: 250,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: AppColor.secondPageTopIconColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.info_outline,
                        color: AppColor.secondPageTopIconColor,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Legs Toning",
                    style: TextStyle(
                        color: AppColor.secondPageTitleColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "and Glutes workout",
                    style: TextStyle(
                        color: AppColor.secondPageTitleColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        padding:
                        const EdgeInsets.only(
                            left: 15, top: 10, bottom: 10, right: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(colors: [
                              AppColor.secondPageContainerGradient1stColor,
                              AppColor.secondPageContainerGradient2ndColor
                            ], begin: Alignment.bottomLeft, end: Alignment
                                .topRight)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.timer_outlined,
                              color: AppColor.secondPageIconColor,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              "68 min",
                              style: TextStyle(
                                  color: AppColor.secondPageTitleColor),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        padding:
                        const EdgeInsets.only(
                            left: 15, top: 10, bottom: 10, right: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(colors: [
                              AppColor.secondPageContainerGradient1stColor,
                              AppColor.secondPageContainerGradient2ndColor
                            ], begin: Alignment.bottomLeft, end: Alignment
                                .topRight)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.handyman_outlined,
                              color: AppColor.secondPageIconColor,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              "Resistant band,kettebell",
                              style: TextStyle(
                                  color: AppColor.secondPageTitleColor),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80)),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30,),
                    Row(
                      children: [
                        const SizedBox(width: 30,),
                        const Text("Circuit 1: Legs Toning",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight
                              .bold),),
                        Expanded(child: Container()),
                        Row(children: [
                          Icon(Icons.loop, color: AppColor.loopColor,
                            size: 30,),
                          const SizedBox(width: 5,),
                          Text("3 sets", style: TextStyle(
                              color: AppColor.setsColor, fontSize: 15),),
                          const SizedBox(width: 30,)
                        ],)
                      ],
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: videoInfo.length,
                            itemBuilder: (_, int index) {
                            return null;
                        }))
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
