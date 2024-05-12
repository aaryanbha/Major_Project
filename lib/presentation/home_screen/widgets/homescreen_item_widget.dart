import 'package:flutter/material.dart';
import 'package:aaryan_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class HomescreenItemWidget extends StatelessWidget {
  const HomescreenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray90014,
      child: Container(
        decoration: AppDecoration.outlineGray90014,
        child: Container(
          width: 173.h,
          padding: EdgeInsets.all(9.h),
          decoration: AppDecoration.fillYellow.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder11,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "24 Dec".toUpperCase(),
                    style: CustomTextStyles.labelLargeBluegray300,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 55.h),
                    child: Text(
                      "Single".toUpperCase(),
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 13.v),
              Text(
                "Soil Moisture",
                style: CustomTextStyles.titleMediumBluegray800,
              ),
              SizedBox(height: 12.v),
              SizedBox(
                height: 109.adaptSize,
                width: 109.adaptSize,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 113.adaptSize,
                        width: 113.adaptSize,
                        child: CircularProgressIndicator(
                          value: 0.5,
                          backgroundColor: appTheme.yellow700,
                          color: appTheme.yellow700,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "5",
                              style: CustomTextStyles.headlineLargeff1f2937,
                            ),
                            TextSpan(
                              text: "0",
                              style: CustomTextStyles.headlineLargeff1f2937,
                            ),
                            TextSpan(
                              text: "%".toUpperCase(),
                              style: CustomTextStyles.titleSmallff1f2937,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "View Details".toUpperCase(),
                      style: CustomTextStyles.labelLargeErrorContainer,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowRightErrorcontainer,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(left: 1.h),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
