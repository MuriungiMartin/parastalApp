import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgressdialogUtils
{
  static bool isProgressVisible = false;

  //add common method for showing progress dialog
  static void showProgressDialog({isCancellable = false})
  {
    if(!isProgressVisible)
    {
      Get.dialog(
        Center(
          child: CircularProgressIndicator.adaptive(
            strokeWidth: 4,
            valueColor: AlwaysStoppedAnimation<Color>(
              Colors.white,
            ),
          ),
        ),
        barrierDismissible: isCancellable,
      );
      isProgressVisible = true;
    }
  }
  static void hideProgressDialog() {
    if (isProgressVisible) Get.back();
    isProgressVisible = false;
  }
}