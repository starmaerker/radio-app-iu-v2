// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'de';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aktuell": MessageLookupByLibrary.simpleMessage("Aktuell läuft:"),
        "error": MessageLookupByLibrary.simpleMessage(
            "Bitte geben Sie einen Text ein."),
        "fb_gesendet":
            MessageLookupByLibrary.simpleMessage("Feedback gesendet."),
        "fb_senden": MessageLookupByLibrary.simpleMessage("Feedback senden"),
        "greeting": MessageLookupByLibrary.simpleMessage("Guten Tag!"),
        "interpret": MessageLookupByLibrary.simpleMessage("Interpret"),
        "kommentar":
            MessageLookupByLibrary.simpleMessage("Kommentar (max 150 Zeichen)"),
        "m_Wertung":
            MessageLookupByLibrary.simpleMessage("Aktuelle Moderator Wertung"),
        "moderator": MessageLookupByLibrary.simpleMessage("Ihr Moderator:"),
        "mw_gesendet":
            MessageLookupByLibrary.simpleMessage("Musikwunsch gesendet."),
        "mw_senden": MessageLookupByLibrary.simpleMessage("Musikwunsch senden"),
        "name": MessageLookupByLibrary.simpleMessage("Dein Name"),
        "pl_Wertung":
            MessageLookupByLibrary.simpleMessage("Aktuelle Playlist Wertung"),
        "tab_music_wish": MessageLookupByLibrary.simpleMessage("Musikwunsch"),
        "vorher": MessageLookupByLibrary.simpleMessage("Vorheriger Titel:"),
        "wunschtitel": MessageLookupByLibrary.simpleMessage("Wunschtitel")
      };
}
