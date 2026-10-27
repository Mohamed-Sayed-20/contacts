import 'package:contact_app/core/utils/app_assets.dart';
import 'package:contact_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
class HomeScreenFull extends StatelessWidget {
  const HomeScreenFull({super.key});
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
    );
  }
}
