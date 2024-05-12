import 'package:flutter/material.dart';
import 'package:aaryan_s_application4/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10001,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 129.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 388.v,
                width: 226.h,
              ),
              SizedBox(height: 78.v),
              Text(
                "Portable Soil",
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 8.v),
              Text(
                "Tester".toUpperCase(),
                style: CustomTextStyles.titleLargeOnErrorContainer,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
