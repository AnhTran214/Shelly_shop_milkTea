// Các biến chứa các style của text (thường dùng để gọi lại nhiều lần)

import 'package:flutter/material.dart';
import 'package:flutter_app/core/util/utils.dart';
import 'package:flutter_app/ui/constants/app_colors.dart';

// tạo biến dùng lấy key context bằng hàm bên Utils
final contextUtils = Utils.context;
final normalTextStyle = TextStyle(
  fontSize: Utils.resizeWidthUtil(contextUtils!, 28),
  color: textColor,
);
final nameShopStyle = TextStyle(
  fontSize: Utils.resizeWidthUtil(contextUtils!, 50),
  fontWeight: FontWeight.bold,
  color: bgColorItems,
  letterSpacing: 1.2,
);
final sloganStyle = TextStyle(
  fontSize: Utils.resizeWidthUtil(contextUtils!, 32),
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.italic,
  color: bgColorItems,
);
final txtLoginButtonStyle = TextStyle(
  fontSize: Utils.resizeWidthUtil(contextUtils!, 32),
  fontWeight: FontWeight.bold,
  color: bgColor,
);
final txtLoadingStyle = TextStyle(
  fontSize: Utils.resizeWidthUtil(contextUtils!, 24),
  color: textColorDisable,
);

final txtRegisterLoginStyle = TextStyle(
  color: bgColorItems,
  fontWeight: FontWeight.bold,
  fontSize: Utils.resizeWidthUtil(contextUtils!, 32),
  decoration: TextDecoration.underline,
  decorationColor: bgColorItems,
);
