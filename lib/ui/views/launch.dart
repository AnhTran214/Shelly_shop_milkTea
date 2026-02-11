import 'package:flutter/material.dart';
import 'package:flutter_app/ui/constants/app_colors.dart';
import 'package:flutter_app/ui/constants/app_images.dart';
import 'package:flutter_app/ui/constants/app_strings.dart';
import 'package:flutter_app/ui/constants/text_styles.dart';
import 'package:flutter_app/ui/views/login.dart';

class LaunchView extends StatefulWidget {
  const LaunchView({super.key});
  @override
  State<LaunchView> createState() => _LaunchViewState();
}

class _LaunchViewState extends State<LaunchView> {
  @override
  void initState() {
    super.initState();
    //Delay 2 giây rồi chuyển sang login
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginView()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Align(
                heightFactor: 0.6,
                child: Image.asset(imgLogo, fit: BoxFit.cover),
              ),
            ),
            Text(txtNameShop, style: nameShopStyle),
            Container(
              width: 140,
              height: 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    bgColorItems,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            Text(txtSlogan, style: sloganStyle),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 2.5,
                  valueColor: AlwaysStoppedAnimation(bgColorItems),
                ),
                SizedBox(width: 10),
                Text(txtLoading, style: txtLoadingStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
