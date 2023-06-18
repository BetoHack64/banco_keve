import 'package:banco_keve/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.OverpassRegular18Gray700:
        return TextStyle(
          color: ColorConstant.gray700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.28,
          ),
        );
      case TextFormFieldFontStyle.OverpassSemiBold17Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.29,
          ),
        );
      case TextFormFieldFontStyle.OverpassRegular12Gray700:
        return TextStyle(
          color: ColorConstant.gray700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.58,
          ),
        );
      case TextFormFieldFontStyle.OverpassSemiBold16Teal300:
        return TextStyle(
          color: ColorConstant.teal300,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.56,
          ),
        );
      case TextFormFieldFontStyle.OverpassBold20Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.55,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.gray400,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.59,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray400:
        return OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.gray400,
            width: 1,
          ),
        );
      case TextFormFieldVariant.UnderLineWhiteA700:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.gray400,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineBluegray900:
        return OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.blueGray900,
            width: 1,
          ),
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.gray400,
            width: 1,
          ),
        );
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray400_1:
        return false;
      case TextFormFieldVariant.OutlineGray400:
        return false;
      case TextFormFieldVariant.UnderLineWhiteA700:
        return false;
      case TextFormFieldVariant.OutlineBluegray900:
        return false;
      case TextFormFieldVariant.None:
        return false;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT23:
        return getPadding(
          top: 24,
          right: 24,
          bottom: 24,
        );
      case TextFormFieldPadding.PaddingAll14:
        return getPadding(
          all: 15,
        );
      case TextFormFieldPadding.PaddingT17:
        return getPadding(
          left: 12,
          top: 19,
          right: 12,
          bottom: 19,
        );
      default:
        return getPadding(
          all: 19,
        );
    }
  }
}

enum TextFormFieldPadding {
  PaddingAll18,
  PaddingT23,
  PaddingAll14,
  PaddingT17,
}

enum TextFormFieldVariant {
  None,
  OutlineGray400_1,
  OutlineGray400,
  UnderLineWhiteA700,
  OutlineBluegray900,
}

enum TextFormFieldFontStyle {
  OverpassRegular17Gray400,
  OverpassRegular18Gray700,
  OverpassSemiBold17Gray900,
  OverpassRegular12Gray700,
  OverpassSemiBold16Teal300,
  OverpassBold20Gray900,
}
