import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:path_provider/path_provider.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class PickImageText extends StatefulWidget {
  const PickImageText({super.key});

  @override
  State<PickImageText> createState() => _PickImageTextState();
}

class _PickImageTextState extends State<PickImageText> {
  final FlutterTts flutterTts = FlutterTts();

  File? _image;

  Future _openCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;

      final imagePermanent = await saveFilePermanently(image.path);
      //final imageTemporary = File(image.path);
      setState(() {
        _image = imagePermanent;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  Future _openGallery() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imagePermanent = await saveFilePermanently(image.path);
      //final imageTemporary = File(image.path);
      setState(() {
        _image = imagePermanent;
      });
    } on PlatformException catch (e) {
      print("Failed to pick image: $e");
    }
  }

  Future<File> saveFilePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Assistive App'),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(children: [
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 255, 255, 255),
            margin: const EdgeInsets.all(10),
            child: const Text(
              'Pick Image',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 17, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: double.infinity,
            height: 75,
            margin: const EdgeInsets.all(10),
            child: GestureDetector(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 92, 224, 198))),
                  child: const Text(
                    'Pick From Gallery',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 17, 0, 0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () async {
                    await flutterTts.setLanguage("en-US");
                    await flutterTts.speak("Pick From Gallery");
                  },
                ),
                onDoubleTap: () {
                  _openGallery();
                }),
          ),
          Container(
            width: double.infinity,
            height: 75,
            margin: const EdgeInsets.all(10),
            child: GestureDetector(
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 243, 72, 72))),
                  child: const Text(
                    'Pick From Camera',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 17, 0, 0),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () async {
                    await flutterTts.setLanguage("en-US");
                    await flutterTts.speak("Pick From Camera");
                  },
                ),
                onDoubleTap: () {
                  _openCamera();
                }),
          ),
          Container(
              width: double.infinity,
              height: 300,
              margin: const EdgeInsets.all(10),
              child: _image != null
                  ? Image.file(
                      _image!,
                      width: 1000,
                      height: 1000,
                      fit: BoxFit.fitWidth,
                    )
                  : Image.network(
                      'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png',
                      width: 1000,
                      height: 1000,
                      fit: BoxFit.fitWidth)),
        ]),
      ),
    );
  }
}
