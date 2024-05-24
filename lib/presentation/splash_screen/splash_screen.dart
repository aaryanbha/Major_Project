import 'package:aaryan_s_application4/presentation/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:aaryan_s_application4/core/app_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHomeScreen();
  }

  _navigateToHomeScreen() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

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
