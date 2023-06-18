import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:banco_keve/data/models/register/post_register_resp.dart';
import 'package:banco_keve/data/apiClient/api_client.dart';

class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController setpasswordOneController = TextEditingController();

  TextEditingController confirmpasswordTwoController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  PostRegisterResp postRegisterResp = PostRegisterResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    setpasswordOneController.dispose();
    confirmpasswordTwoController.dispose();
  }

  Future<void> callCreateRegister(Map req) async {
    try {
      postRegisterResp = await Get.find<ApiClient>().createRegister(
        headers: {
          'Content-Type': 'application/json',
        },
        requestData: req,
      );
      _handleCreateRegisterSuccess();
    } on PostRegisterResp catch (e) {
      postRegisterResp = e;
      rethrow;
    }
  }

  void _handleCreateRegisterSuccess() {
    Get.find<PrefUtils>().setId(postRegisterResp.data!.id!.toString());
  }
}
