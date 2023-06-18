import 'package:banco_keve/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.padding,
      this.shape,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonPadding? padding;

  IconButtonShape? shape;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
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
      case IconButtonPadding.PaddingAll7:
        return getPadding(
          all: 7,
        );
      case IconButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      default:
        return getPadding(
          all: 10,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillRed50:
        return ColorConstant.red50;
      case IconButtonVariant.FillPurple50:
        return ColorConstant.purple50;
      case IconButtonVariant.FillRed5001:
        return ColorConstant.red5001;
      case IconButtonVariant.FillIndigo50:
        return ColorConstant.indigo50;
      case IconButtonVariant.FillLime50:
        return ColorConstant.lime50;
      case IconButtonVariant.FillGray50:
        return ColorConstant.gray50;
      case IconButtonVariant.OutlineBlack9003f:
        return ColorConstant.gray50;
      case IconButtonVariant.FillGray10001:
        return ColorConstant.gray10001;
      case IconButtonVariant.OutlineGray50:
        return ColorConstant.blueGray900;
      case IconButtonVariant.FillTeal300:
        return ColorConstant.teal300;
      case IconButtonVariant.FillYellowA400:
        return ColorConstant.yellowA400;
      case IconButtonVariant.FillPurpleA700:
        return ColorConstant.purpleA700;
      case IconButtonVariant.FillTealA400:
        return ColorConstant.tealA400;
      case IconButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.blueGray900;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineGray50:
        return Border.all(
          color: ColorConstant.gray50,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.FillBluegray900:
      case IconButtonVariant.FillRed50:
      case IconButtonVariant.FillPurple50:
      case IconButtonVariant.FillRed5001:
      case IconButtonVariant.FillIndigo50:
      case IconButtonVariant.FillLime50:
      case IconButtonVariant.FillGray50:
      case IconButtonVariant.OutlineBlack9003f:
      case IconButtonVariant.FillGray10001:
      case IconButtonVariant.FillTeal300:
      case IconButtonVariant.FillYellowA400:
      case IconButtonVariant.FillPurpleA700:
      case IconButtonVariant.FillTealA400:
      case IconButtonVariant.FillWhiteA700:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case IconButtonShape.RoundedBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case IconButtonVariant.OutlineBlack9003f:
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
          ),
        ];
      case IconButtonVariant.FillBluegray900:
      case IconButtonVariant.FillRed50:
      case IconButtonVariant.FillPurple50:
      case IconButtonVariant.FillRed5001:
      case IconButtonVariant.FillIndigo50:
      case IconButtonVariant.FillLime50:
      case IconButtonVariant.FillGray50:
      case IconButtonVariant.FillGray10001:
      case IconButtonVariant.OutlineGray50:
      case IconButtonVariant.FillTeal300:
      case IconButtonVariant.FillYellowA400:
      case IconButtonVariant.FillPurpleA700:
      case IconButtonVariant.FillTealA400:
      case IconButtonVariant.FillWhiteA700:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonPadding {
  PaddingAll10,
  PaddingAll7,
  PaddingAll14,
}

enum IconButtonShape {
  CircleBorder15,
  CircleBorder20,
  RoundedBorder12,
}

enum IconButtonVariant {
  FillBluegray900,
  FillRed50,
  FillPurple50,
  FillRed5001,
  FillIndigo50,
  FillLime50,
  FillGray50,
  OutlineBlack9003f,
  FillGray10001,
  OutlineGray50,
  FillTeal300,
  FillYellowA400,
  FillPurpleA700,
  FillTealA400,
  FillWhiteA700,
}
