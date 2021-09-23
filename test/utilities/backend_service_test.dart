import 'package:radio_app_v2/utilities/backend_service.dart';
import 'package:test/test.dart';

void main() {
  group('Test for backend.', () {
    test('get value for Moderatorrating', () {
      final number = BackendService().averageModeratorStars();
      expect(0 <= number && number <= 5, true);
    });

    test('get value for Playlistrating.', () {
      final number = BackendService().averagePlaylistStars();
      expect(0 <= number && number <= 5, true);
    });
  });
}
