import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:major_project/add_new_face.dart';
import 'package:major_project/recognize_the_face.dart';

class RecognizeFace extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();
  RecognizeFace({super.key});

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
              'Face Recognition Feature',
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
                  'Add New Face',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 17, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () async {
                  await flutterTts.setLanguage("en-US");
                  await flutterTts.speak("Add New Face");
                },
              ),
              onDoubleTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AddNewFace();
                }));
              },
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
                        const Color.fromARGB(255, 243, 72, 72))),
                child: const Text(
                  'Recognize The face',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 17, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () async {
                  await flutterTts.setLanguage("en-US");
                  await flutterTts.speak("Recognize The Face");
                },
              ),
              onDoubleTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RecognizeTheFace();
                }));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
