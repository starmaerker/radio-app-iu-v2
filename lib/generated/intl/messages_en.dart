// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aktuell": MessageLookupByLibrary.simpleMessage("Currently Running:"),
        "error": MessageLookupByLibrary.simpleMessage("Please Enter Some Text"),
        "fb_gesendet": MessageLookupByLibrary.simpleMessage("Feedback Sent."),
        "fb_senden": MessageLookupByLibrary.simpleMessage("Send Feedback"),
        "greeting": MessageLookupByLibrary.simpleMessage("Hello"),
        "interpret": MessageLookupByLibrary.simpleMessage("Artist"),
        "kommentar": MessageLookupByLibrary.simpleMessage(
            "Comment (max 150 characters)"),
        "m_Wertung":
            MessageLookupByLibrary.simpleMessage("Current Moderator Rating"),
        "moderator": MessageLookupByLibrary.simpleMessage("Your Moderator:"),
        "mw_gesendet":
            MessageLookupByLibrary.simpleMessage("Music Request Sent."),
        "mw_senden": MessageLookupByLibrary.simpleMessage("Send Music Request"),
        "name": MessageLookupByLibrary.simpleMessage("Your Name"),
        "pl_Wertung":
            MessageLookupByLibrary.simpleMessage("Current Playlist Rating"),
        "tab_music_wish": MessageLookupByLibrary.simpleMessage("Music Request"),
        "vorher": MessageLookupByLibrary.simpleMessage("Previous Songs:"),
        "wunschtitel": MessageLookupByLibrary.simpleMessage("Desired Title")
      };
}
