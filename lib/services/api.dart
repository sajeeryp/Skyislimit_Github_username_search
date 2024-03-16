import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:skyislimit_demo/services/constants.dart';

import '../modules/common/components/no_internet_screen.dart';
import 'api_response.dart';
import 'functions.dart';

int durationInSeconds = 3000;
Duration duration = Duration(seconds: durationInSeconds);

class DioServices {
  BaseOptions options = BaseOptions(
      baseUrl: BaseUrl,
      followRedirects: false,
      connectTimeout: 90 * 1000,
      receiveTimeout: 90 * 1000,
      validateStatus: (status) => true);

/////////////// ---- POST WITHOUT TOKEN ---- ////////////////
  Future postWithoutToken({required String? url, dynamic data}) async {
    final dioInstance = Dio(options);

    commonPrint('***************** P O S T D A T A *******************');
    commonPrint(json.encode(data));
    commonPrint("\n");
    try {
      final response = await dioInstance.request(
        url!,
        data: json.encode(data),
        options: Options(method: 'POST'),
      );
      commonPrint('********************** P O S T **********************');
      commonPrint(response.realUri);
      commonPrint(response.statusCode);
      commonPrint(jsonEncode(response.data));
      commonPrint('********************** P O S T **********************');
      commonPrint("\n");
      return response;
    } on DioError catch (e) {
      commonPrint('error full');
      commonPrint(e);
      if (e.type == DioErrorType.response) {
        commonPrint('cached');
        return APIErrorResponse(statusCode: 500, message: 'Server Not Found.');
      }
      if (e.type == DioErrorType.connectTimeout) {
        commonPrint('check your connection');
        return APIErrorResponse(statusCode: 500, message: 'Server Not Found.');
      }

      if (e.type == DioErrorType.receiveTimeout) {
        commonPrint('unable to connect to the server');
        return APIErrorResponse(statusCode: 500, message: 'Server Not Found.');
      }

      if (e.type == DioErrorType.other) {
        commonPrint('Something went wrong');
        showNoInternetDialog();
      }
      commonPrint(e);
      return APIErrorResponse(statusCode: 500, message: 'Server Not Found.');
    }
  }

/////////////// ---- POST---- ////////////////
  Future post({required String? url, required dynamic data}) async {
    final dioInstance = Dio(options);

    // String authHeaders = 'Bearer 122f4461-1653-4c2e-9bb1-9fbcb6ba457b'; //todo
    // 'Bearer ${getx.Get.find<AuthController>().accessToken.value}';
    // _dioInstance.options.headers['Authorization'] = authHeaders;

    commonPrint(
        '***************** 🅿 🅾 🆂 🆃 🅳 🅰 🆃 🅰 $url *******************');
    // commonPrint("token:$authHeaders");

    // commonPrint(
    //     'AccessToken: ' + getx.Get.find<AuthController>().accessToken.value);
    commonPrint("RequestBody: ${json.encode(data)}");
    // commonPrint("\n");
    // commonPrint('METHOD: POST');

    try {
      final response = await dioInstance.request(
        //.replaceAll('auth/', '')
        url!,
        data: json.encode(data),
        options: Options(method: 'POST'),
      );
      // commonPrint("\n");
      commonPrint(response.realUri);
      // commonPrint(response.statusCode);
      commonPrint("Response: ${json.encode(response.data)}");
      commonPrint(
          '********************** 🅿 🅾 🆂 🆃 🆁 🅴 🆂 🅿 🅾 🅽 🆂 🅴  $url  **********************');
      commonPrint("\n");

      if (response.statusCode == 401) {
      
       
      } else if (response.statusCode == 400 || response.statusCode == 404) {
        // authController.logoutApplication();
      }
      return response;
    } on DioError catch (e) {
      commonPrint('error full');
      commonPrint(e);
     
      commonPrint(e);
      return APIErrorResponse(statusCode: 500, message: 'Server Not Found.');
    }
  }
  }

  /////////////// ---- SHOW INTERNET DIALOG ---- ////////////////
  void showNoInternetDialog() {
    // dialog implementation
    // showSnackBar(
    //   'Internet needed!',
    //   'Please turn on your internet connection',
    //   snackPosition: getx.SnackPosition.TOP,
    //   toastType: ToastType.FAILED,
    //   colorText: black,
    // );
    const NoInternetScreen();
  }

