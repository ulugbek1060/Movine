import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension AppSizing on num {
  // spacing
  Widget get spaceW => SizedBox(width: w);
  Widget get spaceH => SizedBox(height: h);

  // padding
  EdgeInsets get paddingH => EdgeInsets.symmetric(horizontal: w);
  EdgeInsets get paddingV => EdgeInsets.symmetric(vertical: h);
  EdgeInsets get paddingAll => EdgeInsets.all(w);
  EdgeInsets get paddingTop => EdgeInsets.only(top: w);
  EdgeInsets get paddingBottom => EdgeInsets.only(bottom: w);
  EdgeInsets get paddingStart => EdgeInsets.only(left: w);
  EdgeInsets get paddingEnd => EdgeInsets.only(right: w);

  // margin
  EdgeInsets get marginH => EdgeInsets.symmetric(horizontal: w);
  EdgeInsets get marginV => EdgeInsets.symmetric(vertical: h);
  EdgeInsets get marginAll => EdgeInsets.all(w);
  EdgeInsets get marginTop => EdgeInsets.only(top: w);
  EdgeInsets get marginBottom => EdgeInsets.only(bottom: w);
  EdgeInsets get marginStart => EdgeInsets.only(left: w);
  EdgeInsets get marginEnd => EdgeInsets.only(right: w);

  // border radius
  BorderRadius get borderRadius => BorderRadius.circular(w);
  BorderRadius get borderRadiusAll => BorderRadius.circular(w);
  BorderRadius get borderRadiusTop => BorderRadius.only(
    topLeft: Radius.circular(w),
    topRight: Radius.circular(w),
  );
}
