import 'dart:math';

import 'package:radio_app_v2/models/feedback.dart';
import 'package:radio_app_v2/models/moderator.dart';
import 'package:radio_app_v2/models/music_wish.dart';
import 'package:radio_app_v2/models/title.dart';

/// Die Klasse implementiert Stubs für alle Systemschnittstellen zu den Systemen
/// des Senders.
class BackendService {
  /// Liefert Informationen über die Playlist und den Moderator
  static getLiveUpdate(
    Moderator mod,
    Title presentTitle,
    List<Title> pastTitles,
  ) {
    return {
      'Moderator': '${mod.firstName} ${mod.surName}',
      'Titel': presentTitle,
      'Titelliste': pastTitles,
    };
  }

  /// Sendet eine Bewertung zur Datenbank.
  static Feedback sendFeedback(Feedback feedback) {
    return feedback;
  }

  /// Sendet einen Musikwunsch zur Datenbank.
  static MusicWish sendWish(MusicWish musicWish) {
    return musicWish;
  }

  /// Berechnet die durchschnittliche Moderatorbewertung.
  static double averageModeratorStars() {
    var randomNumber = (Random().nextInt(5) + 1).toDouble();
    if (Random().nextInt(2).isEven && randomNumber < 5) {
      randomNumber += 0.5;
    }
    return randomNumber;
  }

  /// Berechnet die durchschnittliche Playlistbewertung.
  static double averagePlaylistStars() {
    var randomNumber = (Random().nextInt(5) + 1).toDouble();
    if (Random().nextInt(2).isEven && randomNumber < 5) {
      randomNumber += 0.5;
    }
    return randomNumber;
  }
}
