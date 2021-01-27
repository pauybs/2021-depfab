class EarthquakeDetail {
  final double latitude;
  final double longitude;
  final String place;
  final String ml;
  final String depth;
  final String hour;
  final String date;

  EarthquakeDetail(
      {this.latitude,
      this.date,
      this.hour,
      this.longitude,
      this.place,
      this.ml,
      this.depth});
}
