import 'package:contact_app/core/utils/App_routes.dart';
import 'package:contact_app/core/utils/app_assets.dart';
import 'package:contact_app/core/utils/app_colors.dart';
import 'package:contact_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlueColor,
      appBar: AppBar(
        backgroundColor: AppColors.darkBlueColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Image.asset(AppAssets.logoRoute),
        ),
        leadingWidth: 117,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Lottie.asset(AppAssets.animations)),
          Text('There is No Contacts Added Here',
              style: AppStyle.bold20gold),
          SizedBox(height: 300),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.goldColor,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.bottomNavBarScreenRouteName,
          );
        },
      ),
    );
  }
}
