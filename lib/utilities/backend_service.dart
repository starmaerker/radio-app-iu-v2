import 'package:radio_app_v2/utilities/dummy_data.dart';
import 'package:radio_app_v2/models/feedback.dart';
import 'package:radio_app_v2/models/moderator.dart';
import 'package:radio_app_v2/models/music_wish.dart';
import 'package:radio_app_v2/models/title.dart';


/// Die Klasse implementiert Stubs für alle Systemschnittstellen zu den Systemen
/// des Senders.
class BackendService {
  /// Liefert Informationen über die Playlist und den Moderator
  getLiveUpdate() {}

  // noch nicht implementiert
  getWishes() {}

  /// Sendet eine Bewertung zur Datenbank.
  Feedback sendFeedback(Feedback feedback) {
    return feedback;
  }

  /// Sendet einen Musikwunsch zur Datenbank.
  MusicWish sendWish(MusicWish musicWish) {
    return musicWish;
  }

  /// Berechnet die durchschnittliche Moderatorbewertung.
  double averageModeratorStars() {
    return 4.5;
  }

  /// Berechnet die durchschnittliche Playlistbewertung.
  double averagePlaylistStars() {
    return 2.5;
  }
}
