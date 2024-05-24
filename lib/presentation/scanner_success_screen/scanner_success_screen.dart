import 'dart:developer';

import 'package:aaryan_s_application4/presentation/type_of_measurements_screen/type_of_measurements_screen.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'dart:io';
import 'package:aaryan_s_application4/core/app_export.dart';
import 'package:aaryan_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_trailing_button_one.dart';
import 'package:provider/provider.dart';

class ScannerSuccessScreen extends StatefulWidget {
  const ScannerSuccessScreen({Key? key}) : super(key: key);

  @override
  _ScannerSuccessScreenState createState() => _ScannerSuccessScreenState();
}

class _ScannerSuccessScreenState extends State<ScannerSuccessScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  int loading = 0;
  String? _mainImage;
  String? image1;
  String? image2;
  String? image3;
  String? image4;

  @override
  void initState() {
    super.initState();
    _controller = CameraController(
      context.read<CameraDescription>(),
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    await _initializeControllerFuture;
    final image = await _controller.takePicture();
    setState(() {
      _mainImage = image.path;
    });
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 44),
              _buildOne(context),
              SizedBox(height: 15),
              _buildCameraIcon(context),
              _buildListView(context),
              _buildSubmitButton(context),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }

  _buildListView(BuildContext context) {
    return Column(
      children: [
        CropImage(
          mainImage: _mainImage,
          image: image1,
          number: 1,
          callback: (path) {
            setState(() {
              image1 = path;
            });
          },
        ),
        SizedBox(height: 10),
        CropImage(
          mainImage: _mainImage,
          image: image2,
          number: 2,
          callback: (path) {
            setState(() {
              image2 = path;
            });
          },
        ),
        SizedBox(height: 10),
        CropImage(
          mainImage: _mainImage,
          image: image3,
          number: 3,
          callback: (path) {
            setState(() {
              image3 = path;
            });
          },
        ),
        SizedBox(height: 10),
        CropImage(
          mainImage: _mainImage,
          image: image4,
          number: 4,
          callback: (path) {
            setState(() {
              image4 = path;
            });
          },
        ),
        SizedBox(height: 10),
      ],
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
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: SizedBox(
        height: 192.v,
        width: double.infinity,
        child: (_mainImage != null)
            ? Image.file(
                File(_mainImage!),
                fit: BoxFit.cover,
              )
            : CustomImageView(
                imagePath: ImageConstant.imgWhatsappImage20240127,
                height: 92.v,
                width: 299.h,
                fit: BoxFit.cover,
              ),
      ),
      // child: CustomImageView(
      //   imagePath: _image != null ? _image!.path : ImageConstant.imgWhatsappImage20240127,
      //   height: 92.v,
      //   width: 299.h,
      // ),
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
          onPressed: () async {
            // String responseNumber = await _sendImageToApi(_image!);
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TypeOfMeasurementsScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.teal,
            padding: EdgeInsets.symmetric(vertical: 15.0),
            // Text color
            textStyle: TextStyle(fontSize: 18),
            // Text style
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

class CropImage extends StatelessWidget {
  final String? mainImage;
  final String? image;
  final int number;
  final Function(String) callback;

  const CropImage({
    super.key,
    required this.mainImage,
    required this.image,
    required this.number,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async{
        CroppedFile? croppedFile = await ImageCropper().cropImage(
          sourcePath: mainImage!,
          aspectRatioPresets: [
            CropAspectRatioPreset.square,
            CropAspectRatioPreset.ratio3x2,
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.ratio4x3,
            CropAspectRatioPreset.ratio16x9
          ],
          uiSettings: [
            AndroidUiSettings(
                toolbarTitle: 'Cropper',
                toolbarColor: Colors.deepOrange,
                toolbarWidgetColor: Colors.white,
                initAspectRatio: CropAspectRatioPreset.original,
                lockAspectRatio: false),
            IOSUiSettings(
              title: 'Cropper',
            ),
            WebUiSettings(
              context: context,
            ),
          ],
        );
        callback(croppedFile!.path);
      },
      child: Container(
        margin: EdgeInsets.only(
          left: 16.h,
          right: 21.h,
        ),
        decoration: AppDecoration.outlineTeal.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: SizedBox(
          height: 192.v,
          width: double.infinity,
          child: (mainImage == null)
              ? Center(
                  child: Text("Click image first"),
                )
              : (image == null)
                  ? Center(
                      child: Text("Click here to crop image $number"),
                    )
                  : Image.file(
                      File(image!),
                      fit: BoxFit.contain,
                    ),
        ),
      ),
    );
  }
}
