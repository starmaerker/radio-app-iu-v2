import 'package:flutter/material.dart';
import 'package:radio_app_v2/screens/music/wish_screen.dart';
import 'package:radio_app_v2/utilities/constants.dart';
import 'package:radio_app_v2/generated/l10n.dart';

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
                        Text(S.of(context).moderator,
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
                  'assets/images/paper.jpg',
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  fit: BoxFit.cover,
                  color: darkColor,                  
                  colorBlendMode: BlendMode.overlay,
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: defaultPadding * 2,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              S.of(context).aktuell,
                              style: TextStyle(
                                  fontSize: 30,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: defaultPadding / 2,
                            ),
                            Text(
                              'Enigma',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: defaultPadding / 2,
                            ),
                            Text(
                              'Dolphin',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton.icon(
                              onPressed: () {
                                print('left');
                              },
                              icon: Icon(
                                Icons.arrow_left,
                                color: Colors.amber.shade50,
                                size: 75,
                              ),
                              label: Text(
                                '',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  S.of(context).vorher,
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.amber.shade50,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: defaultPadding / 2,
                                ),
                                Text(
                                  'Ozzy',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.amber.shade50,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: defaultPadding / 2,
                                ),
                                Text(
                                  'Papa',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.amber.shade50,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic),
                                ),
                              ],
                            ),
                            TextButton.icon(
                              onPressed: () {
                                print('right');
                              },
                              icon: Icon(
                                Icons.arrow_right,
                                color: Colors.amber.shade50,
                                size: 75,
                              ),
                              label: Text(
                                '',
                                style: TextStyle(color: Colors.black),
                              ),
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
