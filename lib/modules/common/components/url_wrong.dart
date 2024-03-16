import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skyislimit_demo/modules/common/components/text.dart';

import '../../../utils/theme.dart';

class NoUrlScreen extends StatelessWidget {
  const NoUrlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: Get.height - 35,
              width: Get.width,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    height: Get.height,
                    width: Get.width,
                    child: Container(
                      color: white,
                      constraints: const BoxConstraints(minHeight: 180),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    height:
                        Get.height > 700 ? Get.height * .58 : Get.height * .5,
                    width: Get.width,
                    child: Container(
                      color: blueColor,
                      constraints: const BoxConstraints(minHeight: 180),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                            height: 60,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: const Icon(
                                      Icons.arrow_back_ios_new_rounded)),
                            )),
                        Container(
                          width: Get.width,
                          constraints:
                              BoxConstraints(minHeight: Get.height - 250),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25)),
                              // color: Theme.of(context).cardColor,
                              color: white),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.do_not_disturb_alt_sharp,
                                color: Colors.blueGrey,
                                size: 55,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextDemo(
                                title: 'Incorrect url or No Internet',
                                fontSize: 16,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
