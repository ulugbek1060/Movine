
class FilterData {
  final String query;
  final bool includeAdult;
  final DateTime? primaryReleaseDate;
  final String? region;
  final String? year;

  FilterData({
    required this.query,
    this.includeAdult = false,
    this.primaryReleaseDate,
    this.region,
    this.year,
  });

  FilterData copyWith({
    String? query,
    bool? includeAdult,
    DateTime? primaryReleaseDate,
    String? region,
    String? year,
  }) {
    return FilterData(
      query: query ?? this.query,
      includeAdult: includeAdult ?? this.includeAdult,
      primaryReleaseDate: primaryReleaseDate ?? this.primaryReleaseDate,
      region: region ?? this.region,
      year: year ?? this.year,
    );
  }
}