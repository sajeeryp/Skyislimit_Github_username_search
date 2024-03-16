// ignore_for_file: constant_identifier_names

import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';


void commonPrint(message) {
  if (kDebugMode) {
    log(message.toString());
  }
}




enum ToastType {
  DEFAULT,
  SUCCESS,
  FAILED,
}

Future<int?> findMaxLineFromString(String textString) async {
  int? maxLine = 3;
  int widthH = (Get.width - 100).toInt();
  if (textString.isNotEmpty) {
    int? maxWidth = (int.parse((widthH.toString())));
    double? maxCharInLine = maxWidth / 15;
    double? maxLines = ((textString.length) / maxCharInLine);
    commonPrint("maxLine:${maxLines < 1 ? maxLine : maxLines}");
    return (maxLines < 1 ? maxLine : maxLines.toInt()) + 1;
  } else {
    return maxLine + 1;
  }
}