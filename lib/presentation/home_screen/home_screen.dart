import 'package:aaryan_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_trailing_button.dart';
import 'package:aaryan_s_application4/widgets/custom_elevated_button.dart';
import 'widgets/homescreen_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:aaryan_s_application4/core/app_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 19.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomElevatedButton(
                                  height: 61.v,
                                  text: "New measurement".toUpperCase(),
                                  leftIcon: Container(
                                      margin: EdgeInsets.only(right: 10.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgPlus,
                                          height: 25.adaptSize,
                                          width: 25.adaptSize)),
                                  buttonTextStyle:
                                      CustomTextStyles.titleMediumPrimary,
                                  onPressed: () {
                                    onTapNewMeasurement(context);
                                  }),
                              SizedBox(height: 39.v),
                              Text("Past Results:",
                                  style: CustomTextStyles
                                      .titleMediumBluegray800SemiBold),
                              SizedBox(height: 38.v),
                              _buildCard(context),
                              SizedBox(height: 20.v),
                              _buildHomeScreen(context),
                              SizedBox(height: 20.v),
                              Container(
                                  margin: EdgeInsets.only(right: 201.h),
                                  decoration: AppDecoration.outlineGray90014,
                                  child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      color: appTheme.red50,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder11),
                                      child: Container(
                                          height: 233.v,
                                          width: 173.h,
                                          padding: EdgeInsets.all(9.h),
                                          decoration: AppDecoration.fillRed
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder11),
                                          child: Stack(
                                              alignment: Alignment.centerRight,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 3.h,
                                                                top: 2.v),
                                                        child: Text(
                                                            "24 Dec"
                                                                .toUpperCase(),
                                                            style: CustomTextStyles
                                                                .labelLargeBluegray300))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 21.h),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(
                                                                          right: 5
                                                                              .h),
                                                                      child: Text(
                                                                          "Single"
                                                                              .toUpperCase(),
                                                                          style: theme
                                                                              .textTheme
                                                                              .labelLarge))),
                                                              SizedBox(
                                                                  height: 13.v),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left: 10
                                                                              .h),
                                                                  child: Text(
                                                                      "Potassium",
                                                                      style: CustomTextStyles
                                                                          .titleMediumBluegray800)),
                                                              SizedBox(
                                                                  height: 9.v),
                                                              SizedBox(
                                                                  height: 109
                                                                      .adaptSize,
                                                                  width: 109
                                                                      .adaptSize,
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomCenter,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .center,
                                                                            child: SizedBox(
                                                                                height: 113.adaptSize,
                                                                                width: 113.adaptSize,
                                                                                child: CircularProgressIndicator(value: 0.5, backgroundColor: appTheme.teal300, color: appTheme.teal300))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.bottomCenter,
                                                                            child: Container(
                                                                                width: 65.h,
                                                                                margin: EdgeInsets.only(bottom: 24.v),
                                                                                child: RichText(
                                                                                    text: TextSpan(children: [
                                                                                      TextSpan(text: "250\n", style: CustomTextStyles.headlineLargeff1f2937),
                                                                                      TextSpan(text: "mg/kg", style: CustomTextStyles.titleSmallff1f2937)
                                                                                    ]),
                                                                                    textAlign: TextAlign.center)))
                                                                      ])),
                                                              SizedBox(
                                                                  height: 24.v),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left: 27
                                                                              .h),
                                                                  child: _buildFrameEighteen(
                                                                      context,
                                                                      viewDetails:
                                                                          "View Details",
                                                                      arrowRight:
                                                                          ImageConstant
                                                                              .imgArrowRightRed400))
                                                            ])))
                                              ]))))
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 55.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgSettings,
            margin: EdgeInsets.only(left: 23.h, top: 12.v, bottom: 12.v)),
        actions: [
          AppbarTrailingButton(
              margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 11.v))
        ]);
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(9.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder11),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h, right: 33.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("24 Dec".toUpperCase(),
                            style: CustomTextStyles.labelLargeBluegray300),
                        Text("full".toUpperCase(),
                            style: theme.textTheme.labelLarge)
                      ])),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v, bottom: 21.v),
                            child: Column(children: [
                              SizedBox(
                                  width: 135.h,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Moisture",
                                                  style: CustomTextStyles
                                                      .bodyMediumGray600),
                                              SizedBox(height: 5.v),
                                              Text("56",
                                                  style: CustomTextStyles
                                                      .titleSmallBluegray800)
                                            ]),
                                        _buildFrameThirtyTwo(context,
                                            p: "N", fiftySix: "56")
                                      ])),
                              SizedBox(height: 22.v),
                              SizedBox(
                                  width: 135.h,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 1.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Conductivity",
                                                      style: CustomTextStyles
                                                          .bodyMediumGray600),
                                                  SizedBox(height: 3.v),
                                                  Text("56",
                                                      style: CustomTextStyles
                                                          .titleSmallBluegray800)
                                                ])),
                                        _buildFrameThirtyTwo(context,
                                            p: "P", fiftySix: "56")
                                      ])),
                              SizedBox(height: 22.v),
                              SizedBox(
                                  width: 135.h,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 1.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("pH",
                                                      style: CustomTextStyles
                                                          .bodyMediumGray600),
                                                  SizedBox(height: 3.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text("7.8",
                                                          style: CustomTextStyles
                                                              .titleSmallBluegray800))
                                                ])),
                                        _buildFrameThirtyTwo(context,
                                            p: "K", fiftySix: "56")
                                      ]))
                            ])),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text("Soil Health",
                                      style: CustomTextStyles
                                          .titleMediumBluegray800)),
                              SizedBox(height: 12.v),
                              SizedBox(
                                  height: 113.adaptSize,
                                  width: 113.adaptSize,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                                height: 113.adaptSize,
                                                width: 113.adaptSize,
                                                child:
                                                    CircularProgressIndicator(
                                                        value: 0.5,
                                                        backgroundColor:
                                                            appTheme.yellow700,
                                                        color: appTheme
                                                            .yellow700))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "70",
                                                      style: CustomTextStyles
                                                          .headlineLargeff1f2937),
                                                  TextSpan(
                                                      text: "%".toUpperCase(),
                                                      style: CustomTextStyles
                                                          .titleSmallff1f2937)
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                              SizedBox(height: 21.v),
                              _buildFrameEighteen(context,
                                  viewDetails: "View Details",
                                  arrowRight:
                                      ImageConstant.imgArrowRightTeal400)
                            ])
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildHomeScreen(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 234.v,
            crossAxisCount: 2,
            mainAxisSpacing: 28.h,
            crossAxisSpacing: 28.h),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return HomescreenItemWidget();
        });
  }

  /// Common widget
  Widget _buildFrameThirtyTwo(
    BuildContext context, {
    required String p,
    required String fiftySix,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(p,
          style: CustomTextStyles.bodyMediumGray600
              .copyWith(color: appTheme.gray600)),
      SizedBox(height: 5.v),
      Text(fiftySix,
          style: CustomTextStyles.titleSmallBluegray800
              .copyWith(color: appTheme.blueGray800))
    ]);
  }

  /// Common widget
  Widget _buildFrameEighteen(
    BuildContext context, {
    required String viewDetails,
    required String arrowRight,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Text(viewDetails,
          style: CustomTextStyles.labelLargeRed400
              .copyWith(color: appTheme.red400)),
      CustomImageView(
          imagePath: arrowRight,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(left: 1.h))
    ]);
  }

  /// Navigates to the typeOfMeasurementsThreeScreen when the action is triggered.
  onTapNewMeasurement(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.scannerSuccessScreen);
  }
}
