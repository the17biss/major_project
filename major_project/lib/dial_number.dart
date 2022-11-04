import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class DialNumber extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();
  DialNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dial Number"),
        ),
        body: Column(children: [
          Container(
            height: 75,
            width: 370,
            margin: const EdgeInsets.all(10),
            child: GestureDetector(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 222, 246, 6))),
                child: const Text(
                  '3',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 1, 6, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () async {
                  await flutterTts.setLanguage("en-US");
                  await flutterTts.speak("three");
                },
              ),
              onDoubleTap: () {},
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 75,
                    width: 110,
                    margin: const EdgeInsets.all(10),
                    child: GestureDetector(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 92, 224, 198))),
                        child: const Text(
                          '1',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 17, 0, 0),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () async {
                          await flutterTts.setLanguage("en-US");
                          await flutterTts.speak("one");
                        },
                      ),
                      onDoubleTap: () {},
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 110,
                    margin: const EdgeInsets.all(10),
                    child: GestureDetector(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 92, 224, 198))),
                        child: const Text(
                          '2',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 17, 0, 0),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () async {
                          await flutterTts.setLanguage("en-US");
                          await flutterTts.speak("two");
                        },
                      ),
                      onDoubleTap: () {},
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 110,
                    margin: const EdgeInsets.all(10),
                    child: GestureDetector(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 92, 224, 198))),
                        child: const Text(
                          '3',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 17, 0, 0),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () async {
                          await flutterTts.setLanguage("en-US");
                          await flutterTts.speak("three");
                        },
                      ),
                      onDoubleTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 75,
                    width: 110,
                    margin: const EdgeInsets.all(10),
                    child: GestureDetector(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 92, 224, 198))),
                        child: const Text(
                          '4',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 17, 0, 0),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () async {
                          await flutterTts.setLanguage("en-US");
                          await flutterTts.speak("four");
                        },
                      ),
                      onDoubleTap: () {},
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 110,
                    margin: const EdgeInsets.all(10),
                    child: GestureDetector(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 92, 224, 198))),
                        child: const Text(
                          '5',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 17, 0, 0),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () async {
                          await flutterTts.setLanguage("en-US");
                          await flutterTts.speak("five");
                        },
                      ),
                      onDoubleTap: () {},
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 110,
                    margin: const EdgeInsets.all(10),
                    child: GestureDetector(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 92, 224, 198))),
                        child: const Text(
                          '6',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 17, 0, 0),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () async {
                          await flutterTts.setLanguage("en-US");
                          await flutterTts.speak("six");
                        },
                      ),
                      onDoubleTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 75,
                    width: 110,
                    margin: const EdgeInsets.all(10),
                    child: GestureDetector(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 92, 224, 198))),
                        child: const Text(
                          '7',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 17, 0, 0),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () async {
                          await flutterTts.setLanguage("en-US");
                          await flutterTts.speak("seven");
                        },
                      ),
                      onDoubleTap: () {},
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 110,
                    margin: const EdgeInsets.all(10),
                    child: GestureDetector(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 92, 224, 198))),
                        child: const Text(
                          '8',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 17, 0, 0),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () async {
                          await flutterTts.setLanguage("en-US");
                          await flutterTts.speak("eight");
                        },
                      ),
                      onDoubleTap: () {},
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 110,
                    margin: const EdgeInsets.all(10),
                    child: GestureDetector(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 92, 224, 198))),
                        child: const Text(
                          '9',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 17, 0, 0),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () async {
                          await flutterTts.setLanguage("en-US");
                          await flutterTts.speak("nine");
                        },
                      ),
                      onDoubleTap: () {},
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 75,
                    width: 110,
                    margin: const EdgeInsets.all(10),
                    child: GestureDetector(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 92, 224, 198))),
                        child: const Text(
                          '*',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 17, 0, 0),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () async {
                          await flutterTts.setLanguage("en-US");
                          await flutterTts.speak("asterisk");
                        },
                      ),
                      onDoubleTap: () {},
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 110,
                    margin: const EdgeInsets.all(10),
                    child: GestureDetector(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 92, 224, 198))),
                        child: const Text(
                          '0',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 17, 0, 0),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () async {
                          await flutterTts.setLanguage("en-US");
                          await flutterTts.speak("zero");
                        },
                      ),
                      onDoubleTap: () {},
                    ),
                  ),
                  Container(
                    height: 75,
                    width: 110,
                    margin: const EdgeInsets.all(10),
                    child: GestureDetector(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 92, 224, 198))),
                        child: const Text(
                          '#',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 17, 0, 0),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onPressed: () async {
                          await flutterTts.setLanguage("en-US");
                          await flutterTts.speak("hash");
                        },
                      ),
                      onDoubleTap: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 75,
            width: 370,
            margin: const EdgeInsets.all(10),
            child: GestureDetector(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 192, 71, 206))),
                child: const Text(
                  '<--',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 17, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () async {
                  await flutterTts.setLanguage("en-US");
                  await flutterTts.speak("backspace");
                },
              ),
              onDoubleTap: () {},
            ),
          ),
          Container(
            height: 75,
            width: 370,
            margin: const EdgeInsets.all(10),
            child: GestureDetector(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 183, 33, 19))),
                child: const Text(
                  'CALL',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 17, 0, 0),
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: () async {
                  await flutterTts.setLanguage("en-US");
                  await flutterTts.speak("CALL");
                },
              ),
              onDoubleTap: () {},
            ),
          ),
        ]));
  }
}
