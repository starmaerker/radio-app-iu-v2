import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:radio_app_v2/generated/l10n.dart';
import 'package:radio_app_v2/utilities/constants.dart';
import 'package:radio_app_v2/screens/music/components/song_text_field.dart';

class FeedbackScreen extends StatefulWidget {
  final randomInt = Random().nextInt(5);

  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  double _moderatorRating = 0;
  double _playListRating = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.softLight),
            image: AssetImage('assets/images/paper.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Moderator',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              RatingBar.builder(
                initialRating: _moderatorRating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: primaryColor,
                ),
                onRatingUpdate: (rating) {
                  setState(() {
                    _moderatorRating = rating;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Playlist',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              RatingBar.builder(
                initialRating: _playListRating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: primaryColor,
                ),
                onRatingUpdate: (rating) {
                  setState(() {
                    _playListRating = rating;
                  });
                },
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: SongTextField(S.of(context).kommentar, 10),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: SongTextField(S.of(context).name),
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(content: Text(S.of(context).fb_gesendet));
                            });
                },
                child: Text(
                  S.of(context).fb_senden,
                  style: TextStyle(color: secondaryColor),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(primaryColor)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                S.of(context).pl_Wertung,
                style: TextStyle(
                    color: Colors.amber.shade100,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              RatingBar.builder(
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: (context, _) => Icon(
                  Icons.star_border_purple500,
                  color: primaryColor,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                S.of(context).m_Wertung,
                style: TextStyle(
                    color: Colors.amber.shade100,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              RatingBar.builder(
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: (context, _) => Icon(
                  Icons.star_border_purple500,
                  color: primaryColor,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                height: 25,
              ),
              // ListView Builder
            ],
          ),
        ),
      ),
    );
  }
}
