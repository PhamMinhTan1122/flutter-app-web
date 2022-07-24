import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_web/pages/home_page.dart';
import 'package:flutter_app_web/values/app_assets.dart';
import 'package:flutter_app_web/values/app_colors.dart';
import 'package:flutter_app_web/values/app_style.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  // color: AppColors.primaryColor,
                  child: Text(
                    'WELCOME TO',
                    style: AppStyle.robotoCondensedH3
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'English',
                        style: AppStyle.robotoCondensedH2.copyWith(
                            color: AppColors.textGray,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Text(
                          'Qoutes"',
                          textAlign: TextAlign.right,
                          style: AppStyle.robotoCondensedH4
                              .copyWith(color: Colors.white, height: 0.5),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  // color: Colors.green,
                  padding: EdgeInsets.only(bottom: 20),
                  child: RawMaterialButton(
                    onPressed: () => {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (_) => HomePage()),
                          (route) => false)
                    },
                    shape: CircleBorder(),
                    fillColor: AppColors.backgroundColor,
                    child: Image.asset(AppAssets.imgRightArrow),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
