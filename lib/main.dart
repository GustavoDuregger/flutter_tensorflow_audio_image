import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'features/home/presentation/pages/home_page.dart';

late List<CameraDescription> cameras;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(
      cameras,
    ),
  ));
}