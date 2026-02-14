import 'package:flutter/material.dart';
import 'package:flutter_app/ui/constants/app_colors.dart';
import 'package:flutter_app/ui/constants/app_images.dart';
import 'package:flutter_app/ui/constants/app_strings.dart';
import 'package:flutter_app/ui/constants/text_styles.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
              SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  labelText: txtPhone,
                  prefixIcon: const Icon(Icons.phone, color: bgColorItems),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: txtPassword,
                  prefixIcon: const Icon(Icons.lock, color: bgColorItems),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                // Chiều cao chuẩn của button cho cả mobile lẫn tablet
                height: (MediaQuery.of(context).size.width * 0.13).clamp(
                  48,
                  72,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: bgColorItems,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(txtLogin, style: txtLoginButtonStyle),
                ),
              ),
              SizedBox(height: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(txtNoAcc, style: normalTextStyle),
                  SizedBox(
                    height: 40,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(txtRegister, style: txtRegisterLoginStyle),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
