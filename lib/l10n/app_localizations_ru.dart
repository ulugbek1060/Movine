// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get welcomeText => 'Добро пожаловать в Movina';

  @override
  String get welcomeContent =>
      'Лучшее приложение века для потоковой передачи фильмов, которое сделает ваши дни прекрасными!';

  @override
  String get getStarted => 'Начать';

  @override
  String get topMovies => 'Лучшие фильмы';

  @override
  String get choseFavoriteGenre =>
      'Выберите свои интересы и получите лучшие рекомендации фильмов. Не волнуйтесь, вы всегда можете изменить его позже.';

  @override
  String get skip => 'Пропустить';

  @override
  String get continui => 'Продолжить';

  @override
  String get seeAll => 'Посмотреть';

  @override
  String get popular => 'Популярный';

  @override
  String get topRated => 'Самый топовые';

  @override
  String get home => 'Главный';

  @override
  String get explore => 'Исследовать';

  @override
  String get myList => 'Мой список';

  @override
  String get profile => 'Профиль';

  @override
  String get movies => 'Кино';

  @override
  String get tryAgain => 'Попробуйте еще раз';

  @override
  String get errorMessage => 'Что то пошло не так!';

  @override
  String get emptyList => 'Ваш список пуст';

  @override
  String get play => 'Играть';

  @override
  String releaseDate(Object date) {
    return 'Дата выпуска: $date';
  }

  @override
  String get nowPlaying => 'Сейчас играет';

  @override
  String minutes(Object time) {
    return '$time минуты';
  }

  @override
  String imdb(Object rating) {
    return '$rating (IMDb)';
  }

  @override
  String get genre => 'Жанр';

  @override
  String get videos => 'Видео';

  @override
  String get similarMovies => 'Похожие фильмы';

  @override
  String get search => 'Поиск';

  @override
  String get darkMode => 'Темный режим';

  @override
  String get language => 'Язык';

  @override
  String get changeLanguage => 'Изменить язык';

  @override
  String get noConnection => 'Нет соединения';
}
