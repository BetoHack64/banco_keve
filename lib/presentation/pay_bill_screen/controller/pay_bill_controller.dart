import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/pay_bill_screen/models/pay_bill_model.dart';

class PayBillController extends GetxController {
  Rx<PayBillModel> payBillModelObj = PayBillModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
