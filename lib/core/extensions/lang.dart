extension LanguageCode on String {
  String toCountryCode() {
    switch (this) {
      case 'en':
        return 'en-US';
      case 'tr':
        return 'tr-TR';
      case 'de':
        return 'de-DE';
      case 'fr':
        return 'fr-FR';
      case 'es':
        return 'es-ES';
      case 'it':
        return 'it-IT';
      case 'ru':
        return 'ru-RU';
      case 'ja':
        return 'ja-JP';
      case 'ko':
        return 'ko-KR';
      case 'zh':
        return 'zh-CN';
      case 'ar':
        return 'ar-SA';
      default:
        return 'en-US';
    }
  }
}
