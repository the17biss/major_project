import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:major_project/pick_image_text.dart';

class RecognizeText extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();
  RecognizeText({super.key});

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
              'Text Recognition Feature',
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
                  'Select The Image',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 17, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () async {
                  await flutterTts.setLanguage("en-US");
                  await flutterTts.speak("Select The Image");
                },
              ),
              onDoubleTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PickImageText();
                }));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
