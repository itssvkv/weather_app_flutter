import 'package:weather_app/model/Weather_model.dart';

class WeatherState {}

class EmptyState extends WeatherState {}

class LoadingState extends WeatherState {}

class SuccessState extends WeatherState {
  final WeatherModel weatherModel;
  SuccessState({required this.weatherModel});
}

class FailureState extends WeatherState {}
