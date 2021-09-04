import 'package:flutter/material.dart';
import 'package:radio_app_v2/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    return Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: LayoutBuilder(builder: (context, constraints) {
              return Stack(
                children: [
                  Image.asset(
                    'assets/images/radio.jpg',
                    height: constraints.maxHeight,
                    fit: BoxFit.cover,
                  ),
                  Center(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: defaultPadding / 2,
                          ),
                          Text('Ihr Moderator:',
                              style: TextStyle(
                                  letterSpacing: 2,
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: defaultPadding / 2,
                          ),
                          Text('Jimmy Unknown',
                              style: TextStyle(
                                letterSpacing: 1,
                                fontSize: 20,
                                color: Colors.white,
                              )),
                        ]),
                  ),
                ],
              );
            }),
          ),
          Expanded(
            child: LayoutBuilder(builder: (context, constraints) {
              return Stack(
                children: [
                  Image.asset(
                    'assets/images/music_note.png',
                    width: constraints.maxWidth,
                    fit: BoxFit.cover,
                    color: darkColor,
                    colorBlendMode: BlendMode.overlay,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Text(
                                'Aktuell läuft:',
                                style: TextStyle(
                                    fontSize: 24, color: primaryColor),
                              ),
                              SizedBox(
                                height: defaultPadding,
                              ),
                              Text(
                                'Enigma',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: defaultPadding / 2,
                              ),
                              Text(
                                'Dolphin',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                'Vorher lief:',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.amber.shade100),
                              ),
                              SizedBox(
                                height: defaultPadding,
                              ),
                              Text(
                                'Ozzy',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.amber.shade100,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: defaultPadding / 2,
                              ),
                              Text(
                                'Papa',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.amber.shade100,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
          ),
        ],     
    );
  }
}
