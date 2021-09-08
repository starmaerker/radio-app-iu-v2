import 'package:flutter/material.dart';
import 'package:radio_app_v2/utilities/constants.dart';

import 'components/song_text_field.dart';

class WishScreen extends StatefulWidget {
  const WishScreen({Key? key}) : super(key: key);  

  @override
  _WishScreenState createState() => _WishScreenState();
}

class _WishScreenState extends State<WishScreen> {
  @override
  Widget build(BuildContext context) {
    //final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    //final currentFocus = FocusScope.of(context);
    //print(MediaQuery.of(context).viewInsets.bottom);

    return Column(
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
              ],
            );
          }),
        ),
        Expanded(child: LayoutBuilder(
          builder: (context, contraints) {
            return Container(
              width: contraints.maxWidth,
              decoration: BoxDecoration(
                image: DecorationImage(
                  colorFilter:
                      ColorFilter.mode(Colors.black, BlendMode.softLight),
                  image: AssetImage('assets/images/paper.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SongTextField('Name'),
                    SongTextField('Wunschtitel'),
                    SongTextField('Interpret'),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(content: Text('Musikwunsch abgeschickt.'));
                            });
                      },
                      child: Text('Musikwunsch senden'),
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(secondaryColor),
                          backgroundColor:
                              MaterialStateProperty.all(primaryColor)),
                    ),
                  ],
                ),
              ),
            );
          },
        ))
      ],
    );
  }
}
