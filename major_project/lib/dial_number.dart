import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class DialNumber extends StatefulWidget {
  const DialNumber({super.key});

  @override
  _DialNumberState createState() => _DialNumberState();
}

class _DialNumberState extends State<DialNumber> {
  String display = '';
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dial Number"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  display,
                  textScaleFactor: 1.0,
                  style: const TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              trailing: Container(
                width: 80,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    const Align(
                      alignment: Alignment.bottomRight,
                    ),
                    InkWell(
                      onTap: () async {
                        await flutterTts.setLanguage("en-US");
                        await flutterTts.speak("Backspace");
                      },
                      onDoubleTap: () {
                        if (display.isNotEmpty) {
                          setState(() {
                            display = display.substring(0, display.length - 1);
                          });
                        }
                      },
                      child: const Icon(
                        Icons.backspace,
                        size: 35,
                        color: Color.fromARGB(255, 196, 29, 17),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Row(
              children: [
                dialPadButton(size, '1', color: Colors.deepOrange),
                dialPadButton(size, '2', color: Colors.deepOrange),
                dialPadButton(size, '3', color: Colors.deepOrange)
              ],
            ),
            Row(
              children: [
                dialPadButton(size, '4', color: Colors.deepOrange),
                dialPadButton(size, '5', color: Colors.deepOrange),
                dialPadButton(size, '6', color: Colors.deepOrange)
              ],
            ),
            Row(
              children: [
                dialPadButton(size, '7', color: Colors.deepOrange),
                dialPadButton(size, '8', color: Colors.deepOrange),
                dialPadButton(size, '9', color: Colors.deepOrange)
              ],
            ),
            Row(
              children: [
                dialPadButton(size, '*', color: Colors.deepOrange),
                dialPadButton(size, '0', color: Colors.deepOrange),
                dialPadButton(size, '#', color: Colors.deepOrange)
              ],
            ),
            InkWell(
                child: Container(
                  height: 80,
                  width: double.infinity,
                  color: Colors.deepOrange,
                  child: const Center(
                    child: Icon(
                      Icons.call,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                onTap: () async {
                  await flutterTts.setLanguage("en-US");
                  await flutterTts.speak("Make a Call");
                },
                onDoubleTap: () async {
                  FlutterPhoneDirectCaller.callNumber(display);
                })
          ],
        ),
      ),
    );
  }

  Widget dialPadButton(Size size, String value, {required Color color}) {
    return InkWell(
      highlightColor: Colors.black45,
      onTap: () async {
        await flutterTts.setLanguage("en-US");
        await flutterTts.speak(value);
      },
      onDoubleTap: () {
        setState(() {
          display = display + value;
        });
      },
      child: Container(
        height: size.height * 0.15,
        width: size.width * 0.33,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 0.025)),
        child: Center(
          child: Text(
            value,
            textScaleFactor: 1.0,
            style: const TextStyle(
                color: Colors.deepOrange,
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
