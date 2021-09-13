import 'package:radio_app_v2/models/feedback.dart';
import 'package:radio_app_v2/models/moderator.dart';
import 'package:radio_app_v2/models/title.dart';

const DUMMY_TITLES = const [
  const Title(id: 1, title: 'Resurgam', artist: 'Anne Dudley', album: 'Poldark'),
  const Title(id: 2, title: 'Remember Not to Forget', artist: 'Audiomachine', album: 'Life'),
  const Title(id: 3, title: 'The Ludlows', artist: 'Christopher Varela', album: 'Movie Themes on Guitar'),
  const Title(id: 4, title: 'Eco', artist: 'Axel Thesleff', album: 'Two Worlds'),
  const Title(id: 5, title: 'Baroque Flamenco', artist: 'Cecilia De Maria', album: '-'),
];

const DUMMY_WISHES = const [];

var DUMMY_FEEDBACKS = [
  Feedback(id: 1, moderatorStars: 4, playlistStars: 1, comment: 'Mach weiter so.', author: 'Jürgen A.', timestamp: DateTime.utc(2021, 06, 24), moderator: DUMMY_MODERATORS[0], title: DUMMY_TITLES[0]),
  Feedback(id: 2, moderatorStars: 3, playlistStars: 2, comment: 'Da geht noch was.', author: 'Monika K.', timestamp: DateTime.utc(2021, 06, 23), moderator: DUMMY_MODERATORS[1], title: DUMMY_TITLES[1]),
  Feedback(id: 3, moderatorStars: 5, playlistStars: 3.5, comment: 'Whatsss upp?', author: 'Jess X.', timestamp: DateTime.utc(2021, 07, 10), moderator: DUMMY_MODERATORS[2], title: DUMMY_TITLES[2]),
  Feedback(id: 4, moderatorStars: 3.5, playlistStars: 5, comment: 'Ich liebe euch.', author: 'Frank O.', timestamp: DateTime.utc(2021, 06, 23), moderator: DUMMY_MODERATORS[3], title: DUMMY_TITLES[3]),
  Feedback(id: 5, moderatorStars: 1.5, playlistStars: 4.5, comment: 'Naja geht so.', author: 'Hanna V.', timestamp: DateTime.utc(2021, 06, 23), moderator: DUMMY_MODERATORS[4], title: DUMMY_TITLES[4]),
];

const DUMMY_MODERATORS = const [
  const Moderator(firstName: 'Thomas', surName: 'Ohrner'),
  const Moderator(firstName: 'Rolando', surName: 'Villazón'),
  const Moderator(firstName: 'Joja', surName: 'Ohrner'),
  const Moderator(firstName: 'Alexandra', surName: 'Berger'),
  const Moderator(firstName: 'Svenja', surName: 'Sellnow'),
];
