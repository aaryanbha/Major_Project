import 'package:aaryan_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:aaryan_s_application4/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:aaryan_s_application4/core/app_export.dart';

class SingleTestResultsFailFourScreen extends StatelessWidget {
  const SingleTestResultsFailFourScreen({Key? key, required String responseNumber})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 33.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 55.h,
                      right: 50.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 33.h,
                      vertical: 67.v,
                    ),
                    decoration: AppDecoration.outlinePink.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder134,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroupOnprimary,
                          height: 116.v,
                          width: 175.h,
                          margin: EdgeInsets.symmetric(vertical: 7.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            top: 14.v,
                            right: 2.h,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "N",
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ),
                              SizedBox(height: 14.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "P",
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ),
                              SizedBox(height: 14.v),
                              Text(
                                "K",
                                style: theme.textTheme.headlineSmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 29.v),
                  SizedBox(
                    width: 166.h,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Phosphorus\n",
                            style: theme.textTheme.headlineMedium,
                          ),
                          TextSpan(
                            text: "Test",
                            style: CustomTextStyles.headlineSmallInterff111827,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  _buildMeasured(context),
                  SizedBox(height: 34.v),
                  CustomElevatedButton(
                    height: 57.v,
                    text: "Get solution".toUpperCase(),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 10.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgProfile,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillRed,
                    buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                  ),
                  SizedBox(height: 13.v),
                  _buildFrameThirtyTwo(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "Test Results",
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgHome,
          margin: EdgeInsets.fromLTRB(21.h, 13.v, 21.h, 8.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMeasured(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Measured".toUpperCase(),
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 19.v),
            Row(
              children: [
                Text(
                  "43.135 ",
                  style: theme.textTheme.headlineLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 19.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "units",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
            SizedBox(height: 59.v),
            Text(
              "Recommended".toUpperCase(),
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 19.v),
            Row(
              children: [
                Text(
                  "56-65",
                  style: theme.textTheme.headlineLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    top: 19.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "units",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgXcircle,
                height: 120.adaptSize,
                width: 120.adaptSize,
              ),
              SizedBox(height: 34.v),
              Text(
                "Test Failed",
                style: CustomTextStyles.headlineMediumPink900,
              ),
              SizedBox(height: 5.v),
              Text(
                "Improvements Needed",
                style: CustomTextStyles.titleMediumPrimaryContainer,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameThirtyTwo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomElevatedButton(
            text: "Measure again".toUpperCase(),
            margin: EdgeInsets.only(right: 7.h),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgQrcode,
                height: 26.adaptSize,
                width: 26.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillYellow,
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            text: "Next test".toUpperCase(),
            margin: EdgeInsets.only(left: 7.h),
            leftIcon: Container(
              margin: EdgeInsets.only(right: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowleft,
                height: 26.adaptSize,
                width: 26.adaptSize,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
