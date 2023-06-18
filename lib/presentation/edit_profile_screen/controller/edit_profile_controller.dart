import 'package:banco_keve/core/app_export.dart';
import 'package:banco_keve/presentation/edit_profile_screen/models/edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:banco_keve/data/models/me/get_me_resp.dart';
import 'package:banco_keve/data/apiClient/api_client.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EditProfileController extends GetxController {
  TextEditingController nameOneController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  TextEditingController phoneOneController = TextEditingController();

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

  GetMeResp getMeResp = GetMeResp();

  @override
  Future<void> onReady() async {
    super.onReady();
    try {
      await this.callFetchMe();
      _onFetchMeSuccess();
    } on GetMeResp {
      _onFetchMeError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  @override
  void onClose() {
    super.onClose();
    nameOneController.dispose();
    emailOneController.dispose();
    phoneOneController.dispose();
  }

  Future<void> callFetchMe() async {
    try {
      getMeResp = await Get.find<ApiClient>().fetchMe(headers: {
        'Content-type': 'application/json',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODc3NjY2OX0.16TzzeJMkGbsT-hk-wigjBt4xeJNcwNzVvnl05evYUk',
      });
      _handleFetchMeSuccess();
    } on GetMeResp catch (e) {
      getMeResp = e;
      rethrow;
    }
  }

  void _handleFetchMeSuccess() {
    phoneOneController.text = getMeResp.data!.username!.toString();
    emailOneController.text = getMeResp.data!.email!.toString();
    nameOneController.text = getMeResp.data!.name!.toString();
  }

  void _onFetchMeSuccess() {}
  void _onFetchMeError() {
    Fluttertoast.showToast(
      msg: "Something went wrong!",
    );
  }
}
