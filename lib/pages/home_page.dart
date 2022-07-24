import 'package:flutter/material.dart';
import 'package:flutter_app_web/pages/landing_page.dart';
import 'package:flutter_app_web/values/app_assets.dart';
import 'package:flutter_app_web/values/app_colors.dart';
import 'package:flutter_app_web/values/app_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text(
          'English today',
          style: AppStyle.h4.copyWith(color: AppColors.textBlack, fontSize: 36),
        ),
        elevation: 0, // line shadow appBar
        leading: InkWell(
          onTap: () => {print('Menu')},
          child: Image.asset(AppAssets.imgMenu),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {print('Exchanged')},
        backgroundColor: AppColors.primaryColor,
        child: Image.asset(AppAssets.imgExchange),
      ),
    );
  }
}
