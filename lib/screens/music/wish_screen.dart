import 'package:flutter/material.dart';
import 'package:radio_app_v2/generated/l10n.dart';
import 'package:radio_app_v2/utilities/constants.dart';

import 'components/song_text_field.dart';

class WishScreen extends StatefulWidget {
  const WishScreen({Key? key}) : super(key: key);

  @override
  _WishScreenState createState() => _WishScreenState();
}

class _WishScreenState extends State<WishScreen> {
  final _formKey = GlobalKey<FormState>();

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
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SongTextField('Name'),
                      SongTextField(S.of(context).wunschtitel),
                      SongTextField(S.of(context).interpret),
                      ElevatedButton(
                        // onPressed: () {
                        //   showDialog(
                        //       context: context,
                        //       builder: (context) {
                        //         return AlertDialog(content: Text(S.of(context).mv_gesendet));
                        //       });
                        // },
                        onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(S.of(context).mw_gesendet),duration: Duration(milliseconds: 750),),
                            );
                          }
                        },
                        child: Text(S.of(context).mw_senden),
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(secondaryColor),
                            backgroundColor:
                                MaterialStateProperty.all(primaryColor)),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ))
      ],
    );
  }
}
