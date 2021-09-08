import 'package:flutter/material.dart';
import 'package:radio_app_v2/utilities/constants.dart';

class SongTextField extends StatefulWidget {
  final String placeHolder;
  final int multiLines;

  SongTextField(this.placeHolder, [this.multiLines = 1]);

  @override
  _SongTextFieldState createState() => _SongTextFieldState();
}

class _SongTextFieldState extends State<SongTextField> {
  final myController = TextEditingController();

  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String? inputText;

    return TextField(
      controller: myController,
      keyboardType: TextInputType.multiline,
      minLines: 1,
      maxLines: widget.multiLines,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        filled: true,
        fillColor: secondaryColor,
        hintText: widget.placeHolder,
        hintStyle: TextStyle(
          color: Colors.green[100],
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide.none,
        ),
      ),
      onChanged: (value) => inputText = value,
    );
  }
}
