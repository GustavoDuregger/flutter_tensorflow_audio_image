import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tensorflow_audio/common/ui/constants/styles.dart';
import 'package:flutter_tensorflow_audio/common/ui/constants/texts.dart';
import 'package:flutter_tensorflow_audio/features/image_camera/presentation/pages/image_camera_page.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  final List<CameraDescription> cameras;
  const HomePage(this.cameras, {Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight * 0.1,),
            Lottie.asset('assets/ui/home_animation.json',
                height: screenHeight * 0.3),
            const Text(
              UiText.appTitle,
              style: AppStyle.titleTextStyle,
              textAlign: TextAlign.center,
            ),
            const Text(
              UiText.appSubTitle,
              style: AppStyle.subtitleTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: AppStyle.buttonStyle,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImageCameraPage(
                          widget.cameras,
                        )),
              ),
              child: const Text(UiText.imageRecognize),
            ),
            ElevatedButton(
              style: AppStyle.buttonStyle,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImageCameraPage(
                          widget.cameras,
                        )),
              ),
              child: const Text(UiText.audioRecognize),
            ),
          ],
        ),
      ),
    );
  }
}
