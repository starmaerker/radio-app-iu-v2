import 'package:radio_app_v2/models/moderator.dart';
import 'package:radio_app_v2/models/title.dart';

class Feedback {
  final int id;
  final double moderatorStars;
  final Moderator moderator;
  final double playlistStars;
  final Title title;
  final String comment;
  final String author;
  final DateTime timestamp;

  Feedback({
    required this.id,
    required this.moderatorStars,
    required this.moderator,
    required this.playlistStars,
    required this.title,
    required this.comment,
    required this.author,
    required this.timestamp,
  });
}
