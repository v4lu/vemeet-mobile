class ApiEndpoints {
  static const String baseUrl = 'https://core.vemeet.me/v1';

  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String refreshToken = '/auth/refresh';

  static const String sessionUser = '/users';

  static const String createSwipe = '/swipes';
  static const String updateSwiperProfile = '/swipes';
  static const String getSwipeProfile = '/swipes'; // /{id}
  static const String getPotentialMatches = '/swipes/potential-matches';
  static const String getMatches = '/swipes/matches';
}
