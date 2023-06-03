import 'package:flutter/material.dart';
import 'package:lbdaap/base/export_all.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.prefixWidget,
      this.suffixWidget,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      default:
        return getPadding(
          all: 17,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.yellow800;
      case ButtonVariant.OutlineBluegray9003f:
        return ColorConstant.orange40075;
      case ButtonVariant.OutlineBluegray9003f_1:
        return ColorConstant.orange400;
      case ButtonVariant.FillOrange40075:
        return ColorConstant.orange40075;
      case ButtonVariant.OutlineOrange400:
        return null;
      default:
        return ColorConstant.orange400;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineOrange400:
        return Border.all(
          color: ColorConstant.orange400,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillOrange400:
      case ButtonVariant.OutlineBlack9003f:
      case ButtonVariant.OutlineBluegray9003f:
      case ButtonVariant.OutlineBluegray9003f_1:
      case ButtonVariant.FillOrange40075:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003f:
        return [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          )
        ];
      case ButtonVariant.OutlineBluegray9003f:
        return [
          BoxShadow(
            color: ColorConstant.bluegray9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              5,
              5,
            ),
          )
        ];
      case ButtonVariant.OutlineBluegray9003f_1:
        return [
          BoxShadow(
            color: ColorConstant.bluegray9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              5,
              5,
            ),
          )
        ];
      case ButtonVariant.FillOrange400:
      case ButtonVariant.OutlineOrange400:
      case ButtonVariant.FillOrange40075:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.PoppinsBold12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.NunitoBold14Orange400:
        return TextStyle(
          color: ColorConstant.orange400,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder5,
}
enum ButtonPadding {
  PaddingAll12,
  PaddingAll17,
}
enum ButtonVariant {
  FillOrange400,
  OutlineBlack9003f,
  OutlineBluegray9003f,
  OutlineBluegray9003f_1,
  OutlineOrange400,
  FillOrange40075,
}
enum ButtonFontStyle {
  NunitoBold14,
  PoppinsBold12,
  NunitoBold14Orange400, NunitoBold12Teal600,
}
