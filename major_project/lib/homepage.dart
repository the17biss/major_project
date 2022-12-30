import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:major_project/dial_number.dart';
import 'package:major_project/text_recognition.dart';
import 'package:major_project/voice_assistant.dart';
import 'package:major_project/face_recognition.dart';

class HomePage extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  HomePage({super.key});

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
              'Choose the activity you want to perform:',
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
                  'Face Recognition',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 17, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () async {
                  await flutterTts.setLanguage("en-US");
                  await flutterTts.speak("Face Recognition");
                },
              ),
              onDoubleTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RecognizeFace();
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
                  'Text Recognition',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 17, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () async {
                  await flutterTts.setLanguage("en-US");
                  await flutterTts.speak("Text Recognition");
                },
              ),
              onDoubleTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RecognizeText();
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
                        Color.fromARGB(255, 45, 60, 230))),
                child: const Text(
                  'Dial Number',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 17, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () async {
                  await flutterTts.setLanguage("en-US");
                  await flutterTts.speak("Dial Number");
                },
              ),
              onDoubleTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DialNumber();
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
                        Color.fromARGB(255, 228, 232, 16))),
                child: const Text(
                  'Voice Assistant',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 17, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () async {
                  await flutterTts.setLanguage("en-US");
                  await flutterTts.speak("Voice Assistant");
                },
              ),
              onDoubleTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const VoiceAssistant();
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
                        const Color.fromARGB(255, 97, 213, 101))),
                child: const Text(
                  'Exit App',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 17, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () async {
                  await flutterTts.setLanguage("en-US");
                  await flutterTts.speak("Exit App");
                },
              ),
              onDoubleTap: () => exit(0),
            ),
          ),
        ]),
      ),
    );
  }
}
