import 'package:flutter/material.dart';
import 'env.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:lbdaap/utils/progress_dialog_utils.dart';
import 'package:http/http.dart' as http;
import '../models/appusers.dart';
import '../models/imprests.dart';

class ApiProvider extends GetConnect {
  var appBaseurl = Env.base_Url_Prefix;
  final userdata = GetStorage();

  List? statesList;
  String? _myState;

  Map<String, String> headers = {"Content-Type": "application/json"};
  var retobject;
  var data;
  var spokes;

Future<Usr> fetchUsers() async {
try {
  await http.post(Uri.parse('$appBaseurl/api/ServiceManagement/LoginUser'),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: {}).then((response) {
    retobject = response.body;
  });
}
catch (exception) {
  return Future.error(exception.toString());
}
return AppUsersFromJson(retobject.toString());
  }

Future<ID> fetchImprests() async {
try {
  await http.post(Uri.parse('$appBaseurl/api/ServiceManagement/GetImprests'),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: {}).then((response) {
    retobject = response.body;
  });
}
catch (exception) {
  return Future.error(exception.toString());
}
return ImprestsFromJson(retobject.toString());
  }

}