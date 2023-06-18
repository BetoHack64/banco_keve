import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/log_in_screen/models/log_in_model.dart';
import 'package:flutter/material.dart';
import 'package:banco_keve/data/models/login/post_login_resp.dart';
import 'package:banco_keve/data/apiClient/api_client.dart';

class LogInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  Rx<LogInModel> logInModelObj = LogInModel().obs;

  PostLoginResp postLoginResp = PostLoginResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordOneController.dispose();
  }

  Future<void> callCreateLogin(Map req) async {
    try {
      postLoginResp = await Get.find<ApiClient>().createLogin(
        headers: {
          'Content-Type': 'application/json',
        },
        requestData: req,
      );
      _handleCreateLoginSuccess();
    } on PostLoginResp catch (e) {
      postLoginResp = e;
      rethrow;
    }
  }

  void _handleCreateLoginSuccess() {
    Get.find<PrefUtils>().setToken(postLoginResp.data!.token!.toString());
  }
}
