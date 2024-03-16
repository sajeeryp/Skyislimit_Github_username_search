import 'package:get/get.dart';

class HRMSMasterController extends GetxController {
  @override
  // ignore: unnecessary_overrides
  void onInit() async {
    super.onInit();

    // commonPrint('<=========================================>');
    // commonPrint('HRMS controller Initialized');
    // commonPrint('<=========================================>');
  }

  @override
  void onClose() {}

  // ================================================>
  // I N I T I A L A Z A T I O N  - V A R I A B L E S
  // ------------------------------------------------
  // ================================================>
  bool loading = false;
  bool isEdit = false;
  bool isListEdit = false;
  int tappedItemIndex = 0;
  bool showAllFields = true;

  // ================================================>
  // API   -   FUNCTIONS   -   I N D E X
  // ------------------------------------------------
  //  1.
  //  2.
  //  3.
  //  4.
  //  5.
  //  6.
  //  7.
  //  8.
  //  9.
  // 10.
  // ===============================================>

//=========================================>
//   Future fetchCostCenterList()
//=========================================>
//   Future fetchOrderDetails() async {
//     loading = true;
//
//      final data={"orderId":"20221222000002","languageId":3,"merchantId":"MER201900015"};
//
//     await DioServices()
//         .post(url: 'https://api-dev.skyislimit.com/auth/erp/counter/order/details', data: data)
//         .then((response) async {
//       if (response.statusCode == 200) {
//         if (response.data['responseCode'] == 1) {
//           // employeeTypeData = employeeTypeListResponseFromJson(
//           //     jsonEncode(response.data['data']));
//           // loading = false;
//           // update(['employee-type']);
//         } else {}
//       } else {
//         loading = false;
//         update(['employee-type']);
//       }
//     });
//   }
}
