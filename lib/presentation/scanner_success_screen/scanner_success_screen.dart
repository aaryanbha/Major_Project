import 'dart:developer';
import 'dart:io';

import 'package:aaryan_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:aaryan_s_application4/widgets/app_bar/appbar_trailing_button_one.dart';
import 'package:camera/camera.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:aaryan_s_application4/core/app_export.dart';
import 'package:provider/provider.dart';

class ScannerSuccessScreen extends StatefulWidget {
  const ScannerSuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<ScannerSuccessScreen> createState() => _ScannerSuccessScreenState();
}

class _ScannerSuccessScreenState extends State<ScannerSuccessScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  int loading = 0;

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: (loading == 1)
            ? Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              )
            : Container(
                width: 418.h,
                padding: EdgeInsets.symmetric(vertical: 31.v),
                child: Column(
                  children: [
                    Spacer(
                      flex: 44,
                    ),
                    _buildOne(context),
                    Spacer(
                      flex: 55,
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blue,
                      // Provide an onPressed callback.
                      onPressed: () async {
                        // Take the Picture in a try / catch block. If anything goes wrong,
                        // catch the error.
                        try {
                          // Ensure that the camera is initialized.
                          await _initializeControllerFuture;

                          // Attempt to take a picture and then get the location
                          // where the image file is saved.
                          final image = await _controller.takePicture();
                          setState(() {
                            loading = 1;
                          });
                          final storage = FirebaseStorage.instance;
                          String imageName =
                              DateTime.now().millisecondsSinceEpoch.toString();
                          Reference ref =
                              storage.ref().child('images/$imageName.jpg');
                          await ref.putFile(File(image.path));
                          setState(() {
                            loading = 0;
                          });
                        } catch (e) {
                          // If an error occurs, show snackbar with the error message.
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(e.toString()),
                            ),
                          );
                        }
                      },
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(
                      flex: 55,
                    ),
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
        // AppbarTrailingButtonOne(
        //   margin: EdgeInsets.symmetric(
        //     horizontal: 21.h,
        //     vertical: 11.v,
        //   ),
        // ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 36.h,
        // vertical: 62.v,
      ),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: SizedBox(
        height: 360.v,
        width: 299.h,
        child: FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // If the Future is complete, display the preview.
              return CameraPreview(_controller);
            } else {
              // Otherwise, display a loading indicator.
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
      // child: CustomImageView(
      //   imagePath: ImageConstant.imgWhatsappImage20240127,
      //   height: 92.v,
      //   width: 299.h,
      // ),
    );
  }
}
