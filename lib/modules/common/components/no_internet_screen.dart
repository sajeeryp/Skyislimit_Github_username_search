import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skyislimit_demo/modules/common/components/text.dart';

import '../../../utils/theme.dart';
import '../../../utils/image_asset.dart';

class NoInternetScreen extends StatefulWidget {
  const NoInternetScreen({Key? key, this.onPressed}) : super(key: key);
  final void Function()? onPressed;

  @override
  State<NoInternetScreen> createState() => _NoInternetScreenState();
}

class _NoInternetScreenState extends State<NoInternetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AssetsUtils.noInternet),
            const SizedBox(height: 10),
            const TextDemo(
              title: 'No internet',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              width: Get.width / 1.3,
              child: const TextDemo(
                textAlign: TextAlign.center,
                title: 'Please check your internet connection',
                fontSize: 16,
                color: textColorGrey,
              ),
            ),
            const SizedBox(height: 50),
            InkWell(
              onTap: widget.onPressed ?? Get.arguments['onPressed'],
              child: Container(
                  decoration: BoxDecoration(
                      color: blueColorLight,
                      borderRadius: BorderRadius.circular(6)),
                  width: 110,
                  height: 40,
                  child: const Center(
                      child: TextDemo(
                    title: 'Try again',
                    color: white,
                  ))),
            )
          ],
        ),
      ),
    );
  }
}
