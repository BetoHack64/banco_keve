import 'package:banco_keve/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
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
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      case ButtonPadding.PaddingAll20:
        return getPadding(
          all: 22,
        );
      case ButtonPadding.PaddingT8:
        return getPadding(
          top: 9,
          right: 9,
          bottom: 9,
        );
      default:
        return getPadding(
          all: 13,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineBluegray60014:
        return ColorConstant.gray900;
      case ButtonVariant.FillGray7007e:
        return ColorConstant.gray7007e;
      case ButtonVariant.OutlineGray400:
        return null;
      default:
        return ColorConstant.blueGray900;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray400:
        return BorderSide(
          color: ColorConstant.gray400,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillBluegray900:
      case ButtonVariant.OutlineBluegray60014:
      case ButtonVariant.FillGray7007e:
        return null;
      default:
        return null;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineBluegray60014:
        return ColorConstant.blueGray60014;
      case ButtonVariant.FillBluegray900:
      case ButtonVariant.OutlineGray400:
      case ButtonVariant.FillGray7007e:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.OverpassBold16WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.31,
          ),
        );
      case ButtonFontStyle.OverpassSemiBold18WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.56,
          ),
        );
      case ButtonFontStyle.OverpassRegular14WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.57,
          ),
        );
      case ButtonFontStyle.OverpassRegular12Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.33,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.55,
          ),
        );
    }
  }
}

enum ButtonPadding {
  PaddingAll13,
  PaddingAll16,
  PaddingAll20,
  PaddingT8,
}

enum ButtonVariant {
  FillBluegray900,
  OutlineBluegray60014,
  OutlineGray400,
  FillGray7007e,
}

enum ButtonFontStyle {
  OverpassBold20WhiteA700,
  OverpassBold16WhiteA700,
  OverpassSemiBold18WhiteA700,
  OverpassRegular14WhiteA700,
  OverpassRegular12Gray900,
}
