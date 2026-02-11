// Các biến chứa các style của text (thường dùng để gọi lại nhiều lần)

import 'package:flutter/material.dart';
import 'package:flutter_app/ui/constants/app_colors.dart';

final normalTextStyle = TextStyle(fontSize: 16, color: textColor);
final nameShopStyle = TextStyle(
  fontSize: 36,
  fontWeight: FontWeight.bold,
  color: bgColorItems,
  letterSpacing: 1.2,
);
final sloganStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.italic,
  color: bgColorItems,
);
final txtLoginStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: bgColor,
);
final txtLoadingStyle = TextStyle(fontSize: 14, color: textColorDisable);
