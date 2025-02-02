class WeatherModel {
  String cityName;
  DateTime date;
  double temp;
  double maxTemp;
  double minTemp;
  String weatherStateName;
  String? image;
  WeatherModel(
      {required this.cityName,
      required this.date,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherStateName,
      this.image});
}
