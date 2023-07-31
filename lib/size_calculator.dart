//IOS 13, 14 DIMENSION 390 * 844,

//IOS 13, 14 (PRO) DIMENSION 393 * 852,

//IOS 13, 14 (PRO MAX) DIMENSION 428 * 926,

import 'package:flutter/material.dart';
//Helps to scale size on different device and maintain UI looks

widthSizer(double value, BuildContext context, {figmaWidth = 414}) {
  // 414 is the default design screen width on figma
  return MediaQuery.of(context).size.width *
      (value / figmaWidth); // width size on figma
}

heightSizer(double value, BuildContext context, {figmaHeight = 896}) {
  // 896 is the default design screen height on figma
  return MediaQuery.of(context).size.height *
      (value / figmaHeight); // height size on figma
}
