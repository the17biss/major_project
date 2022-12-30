import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:battery_plus/battery_plus.dart';
import 'package:intl/intl.dart';

class VoiceAssistant extends StatefulWidget {
  const VoiceAssistant({super.key});

  @override
  _VoiceAssistantState createState() => _VoiceAssistantState();
}

class _VoiceAssistantState extends State<VoiceAssistant> {
  String display = '';
  var battery = Battery();
  int percentage = 0;
  final FlutterTts flutterTts = FlutterTts();
  @override
  void initState() {
    super.initState();

    getBatteryPercentage();
  }

  void getBatteryPercentage() async {
    final level = await battery.batteryLevel;
    percentage = level;
    setState(() {});
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
              'Voice Assistant Feature',
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
                  'Double click to know the time',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 17, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () async {
                  await flutterTts.setLanguage("en-US");
                  await flutterTts
                      .speak("Double click to know the date and time");
                },
              ),
              onDoubleTap: () async {
                await flutterTts.setLanguage("en-US");
                await flutterTts.speak(DateTime.now().toString());
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
                        const Color.fromARGB(255, 92, 224, 198))),
                child: const Text(
                  'Double click to know the battery percentage',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 17, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () async {
                  await flutterTts.setLanguage("en-US");
                  await flutterTts
                      .speak("Double click to know the battery percentage");
                },
              ),
              onDoubleTap: () async {
                await flutterTts.setLanguage("en-US");
                await flutterTts.speak(percentage.toString());
              },
            ),
          ),
        ]),
      ),
    );
  }
}
