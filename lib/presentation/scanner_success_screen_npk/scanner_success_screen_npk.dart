import 'package:aaryan_s_application4/presentation/single_test_results_fail_four_screen/single_test_results_fail_four_screen.dart';
import 'package:aaryan_s_application4/presentation/single_test_results_pass_four_screen/single_test_results_pass_four_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:aaryan_s_application4/core/app_export.dart';
import 'package:aaryan_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_trailing_button_one.dart';

import '../single_test_results_pass_five_screen/single_test_results_pass_five_screen.dart';

class ScannerSuccessScreenNPK extends StatefulWidget {
  const ScannerSuccessScreenNPK({Key? key}) : super(key: key);
  @override
  _ScannerSuccessScreenNPKState createState() => _ScannerSuccessScreenNPKState();
}

class _ScannerSuccessScreenNPKState extends State<ScannerSuccessScreenNPK> {
  File? _image;
  int? _apiResponse;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<String> _sendImageToApi(File image) async {
    // Placeholder for API upload logic
    print('Image ready for upload: ${image.path}');
    // Simulate a delay to mimic network call
    await Future.delayed(Duration(seconds: 2));
    // Placeholder response
    final response = '123456'; // Simulated response number
    print('Response data: $response');
    return response;
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 100.v),
          child: Column(
            children: [
              Spacer(flex: 44),
              _buildOne(context),
              Spacer(flex: 55),
              _buildCameraIcon(context),
              _buildSubmitButton(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 73.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 41.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      actions: [
        AppbarTrailingButtonOne(
          margin: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 11.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        right: 21.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        vertical: 62.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: CustomImageView(
        imagePath: _image != null ? _image!.path : ImageConstant.imgWhatsappImage20240127,
        height: 92.v,
        width: 299.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildCameraIcon(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.camera_alt),
      onPressed: _pickImage,
      iconSize: 50.0,
      color: Colors.teal,
    );
  }

  /// Section Widget
  Widget _buildSubmitButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
        width: 200,
        height: 50,
        child: ElevatedButton(
          onPressed:  () async {
            // String responseNumber = await _sendImageToApi(_image!);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SingleTestResultsPassFourScreen(responseNumber: 56.6),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.teal, padding: EdgeInsets.symmetric(vertical: 15.0), // Text color
            textStyle: TextStyle(fontSize: 18), // Text style
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Button border radius
            ),
          ),
          child: Text('Submit'),
        ),
      ),
    );
  }

}
