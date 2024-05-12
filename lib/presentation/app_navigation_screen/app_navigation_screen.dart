import 'package:flutter/material.dart';
import 'package:aaryan_s_application4/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Scanner Success",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.scannerSuccessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Type of measurements  Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.typeOfMeasurementsThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Type of measurements ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.typeOfMeasurementsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Type of measurements  Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.typeOfMeasurementsTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Single Test Results - Pass Four",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.singleTestResultsPassFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Single Test Results - Pass One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.singleTestResultsPassOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Single Test Results - Pass Five",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.singleTestResultsPassFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Single Test Results - Pass",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.singleTestResultsPassScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Single Test Results - Pass Two",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.singleTestResultsPassTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Single Test Results - Pass Three",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.singleTestResultsPassThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Test Selector",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.testSelectorScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Scanner Failed",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.scannerFailedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Type of measurements  Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.typeOfMeasurementsSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Type of measurements  Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.typeOfMeasurementsFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Single Test Results - Fail One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.singleTestResultsFailOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Single Test Results - Fail Five",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.singleTestResultsFailFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Single Test Results - Fail",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.singleTestResultsFailScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Single Test Results - Fail Two",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.singleTestResultsFailTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Single Test Results - Fail Four",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.singleTestResultsFailFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Single Test Results - Fail Three",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.singleTestResultsFailThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Type of measurements  Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.typeOfMeasurementsFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Type of measurements  One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.typeOfMeasurementsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Type of measurements  Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.typeOfMeasurementsEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Type of measurements  Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.typeOfMeasurementsSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Type of measurements  Nine",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.typeOfMeasurementsNineScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
