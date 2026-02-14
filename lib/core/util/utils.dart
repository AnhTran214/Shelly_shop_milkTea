import 'package:flutter/material.dart';

class Utils {
  //tạo biến navigatorKey để lấy key context
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  // Tính toán kích thước fontSize
  static double resizeWidthUtil(BuildContext context, double value) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenDesignWidth = 750;
    return (screenWidth * value) / screenDesignWidth;
  }

  // Hàm lấy key context
  static BuildContext? get context => navigatorKey.currentContext;
}
