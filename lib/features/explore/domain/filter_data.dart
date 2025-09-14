
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
}