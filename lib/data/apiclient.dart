import 'package:flutter/material.dart';
import 'env.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:get/get.dart';

class ApiClient extends GetConnect{
var url = Env.base_Url_Prefix;
final userdata = GetStorage();

Map<String, String> headers = {"Content-Type": "application/json"};

@override
void onInit() {
  super.onInit();
  httpClient.timeout = const Duration(seconds: 120);
httpClient.addRequestModifier<dynamic>((request) {
Map<String, String> headers = {"Content-Type": "application/json"};
encoding: Encoding.getByName("utf-8");
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

bool _isSuccessCall(Response response){
  return response.isOk;
}
}


