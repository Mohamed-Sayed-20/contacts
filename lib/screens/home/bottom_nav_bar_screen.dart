import 'package:contact_app/core/utils/App_routes.dart';
import 'package:contact_app/core/utils/app_assets.dart';
import 'package:contact_app/core/utils/app_colors.dart';
import 'package:contact_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

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
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            spacing: 16,
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 440,
              ),
              textField('Enter User Name'),
              textField('Enter User Email'),
              textField('Enter User Phone'),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed(AppRoutes.homeScreenFull);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(16),
                    )
                  ),
                    child: Text('Enter user',
                      style: AppStyle.bold20Blue,
                    ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
  Widget textField(String hintText){
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: TextField(
        style: TextStyle(color: AppColors.goldColor),
        cursorColor: AppColors.whiteColor,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppStyle.bold16LightBlue,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColors.goldColor)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColors.goldColor)
          ),
        ),

      ),
    );
  }
}
