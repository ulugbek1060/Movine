// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcomeText => 'Welcome to Movina';

  @override
  String get welcomeContent =>
      'The best movie streaming app of the century to make your days great!';

  @override
  String get getStarted => 'Get Started';

  @override
  String get topMovies => 'Top Movies';

  @override
  String get choseFavoriteGenre =>
      'Choose your interests and get the best movie recommendations. Don\\\'t worry, you can always change it later.';

  @override
  String get skip => 'Skip';

  @override
  String get continui => 'Continue';

  @override
  String get seeAll => 'See all';

  @override
  String get popular => 'Popular';

  @override
  String get topRated => 'Top rated movies';

  @override
  String get home => 'Home';

  @override
  String get explore => 'Explore';

  @override
  String get myList => 'My List';

  @override
  String get profile => 'Profile';

  @override
  String get movies => 'Movies';

  @override
  String get tryAgain => 'Try again';

  @override
  String get errorMessage => 'Something went wrong!';

  @override
  String get emptyList => 'Your List is Empty';

  @override
  String get play => 'Play';

  @override
  String releaseDate(Object date) {
    return 'Release date: $date';
  }

  @override
  String get nowPlaying => 'Now Playing';

  @override
  String minutes(Object time) {
    return '$time minutes';
  }

  @override
  String imdb(Object rating) {
    return '$rating (IMDb)';
  }

  @override
  String get genre => 'Genre';

  @override
  String get videos => 'Videos';

  @override
  String get similarMovies => 'Similar Movies';

  @override
  String get search => 'Search';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get language => 'Language';

  @override
  String get changeLanguage => 'Change language';

  @override
  String get noConnection => 'No Connection';
}
