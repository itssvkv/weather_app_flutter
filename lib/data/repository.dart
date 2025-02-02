import 'package:dio/dio.dart';
import 'package:weather_app/data/dto/weather_dto.dart';
import 'package:weather_app/model/Weather_model.dart';

class Repository {
  // VoidCallback onLoading;
  // VoidCallback onSuccess;
  // VoidCallback onFailure;
  // Repository(
  //     {required this.onLoading,
  //     required this.onSuccess,
  //     required this.onFailure});
  Future<WeatherModel> getWeather({required String cityName}) async {
    try {
      // onLoading();
      var response = await Dio().get(
          'https://api.weatherapi.com/v1/forecast.json?key=f8a74bf1561f4805a41142713250202&q=$cityName');
      WeatherDto responseData = WeatherDto.fromJson(response.data);
      // onSuccess();
      return responseData.toWeatherModel();
    } catch (e) {
      // onFailure();
      throw Exception('Failed to load weather data');
    }
  }
}
