import 'package:aaryan_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_trailing_button.dart';
import 'package:aaryan_s_application4/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:aaryan_s_application4/core/app_export.dart';

class TypeOfMeasurementsFourScreen extends StatelessWidget {
  const TypeOfMeasurementsFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 7.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("pH Level",
                              style:
                                  CustomTextStyles.headlineSmallInterGray900)),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("Device prepration before starting",
                              style: CustomTextStyles.bodyLargeBluegray800)),
                      SizedBox(height: 29.v),
                      Container(
                          width: 321.h,
                          margin: EdgeInsets.only(left: 11.h, right: 41.h),
                          child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit.",
                              maxLines: 23,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyLargeGray900
                                  .copyWith(height: 1.50))),
                      SizedBox(height: 52.v),
                      CustomElevatedButton(
                          height: 61.v,
                          text: "Start device".toUpperCase(),
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 10.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowrightPrimary,
                                  height: 25.adaptSize,
                                  width: 25.adaptSize)),
                          buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                          onPressed: () {
                            onTapStartDevice(context);
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 55.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 23.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        actions: [
          AppbarTrailingButton(
              margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v))
        ]);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the singleTestResultsPassFiveScreen when the action is triggered.
  onTapStartDevice(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.singleTestResultsPassFiveScreen);
  }
}
