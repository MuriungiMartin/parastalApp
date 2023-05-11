import 'package:flutter/material.dart';
import 'env.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:lbdaap/utils/progress_dialog_utils.dart';

class ApiClient extends GetConnect {
  var url = Env.base_Url_Prefix;
  final userdata = GetStorage();

  Map<String, String> headers = {"Content-Type": "application/json"};

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = const Duration(seconds: 120);
    httpClient.addRequestModifier<dynamic>((request) {
      Map<String, String> headers = {"Content-Type": "application/json"};
      encoding:
      Encoding.getByName("utf-8");
      request.headers.addAll(headers);
      print(request);
      return request;
    });
  }

//check internet connection
  Future isNetworkConnected() async {
    if (!await Get.find().isConnected()) {
      Get.snackbar('No Internet', 'Please check your internet connection',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
      return false;
    }
  }

  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

//login
  Future login({Function (dynamic data)? onSuccess,
    Function (dynamic data)? onError,
    Map requestData = const {}}) async {
    ProgressdialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$url/api/ServiceManagement/LoginUser', body: requestData);
      ProgressdialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
            response.hasError ? response.statusText : 'Something went wrong');
      }
    } catch (e) {
      ProgressdialogUtils.hideProgressDialog();
      onError!(e);
    }
  }

//Register
  Future register({Function (dynamic data)? onSuccess,
    Function (dynamic data)? onError,
    Map requestData = const {}}) async {
    ProgressdialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$url/api/ServiceManagement/registerUser', body: requestData);
      ProgressdialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
            response.hasError ? response.statusText : 'Something went wrong');
      }
    }
    catch (e) {
      ProgressdialogUtils.hideProgressDialog();
      onError!(e);
    }
    //Create ImprestHeader
    Future createImprestHeader({Function (dynamic data)? onSuccess,
      Function (dynamic data)? onError,
      Map requestData = const {}}) async {
      ProgressdialogUtils.showProgressDialog();
      try {
        await isNetworkConnected();
        Response response = await httpClient.post(
            '$url/api/ServiceManagement/ImprestHeader', body: requestData);
        ProgressdialogUtils.hideProgressDialog();
        if (_isSuccessCall(response)) {
          onSuccess!(response.body);
        } else {
          onError!(
              response.hasError ? response.statusText : 'Something went wrong');
        }
      }
      catch (e) {
        ProgressdialogUtils.hideProgressDialog();
        onError!(e);
      }
    }
    //Create ImprestLines
    Future createImprestLines({Function (dynamic data)? onSuccess,
      Function (dynamic data)? onError,
      Map requestData = const {}}) async {
      ProgressdialogUtils.showProgressDialog();
      try {
        await isNetworkConnected();
        Response response = await httpClient.post(
            '$url/api/ServiceManagement/ImprestLines', body: requestData);
        ProgressdialogUtils.hideProgressDialog();
        if (_isSuccessCall(response)) {
          onSuccess!(response.body);
        } else {
          onError!(
              response.hasError ? response.statusText : 'Something went wrong');
        }
      }
      catch (e) {
        ProgressdialogUtils.hideProgressDialog();
        onError!(e);
      }
    }

  }
}
