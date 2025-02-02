import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_status.dart';
import 'package:weather_app/data/repository.dart';
import 'package:weather_app/model/Weather_model.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(EmptyState());
  getWeather({required String cityName}) async {
    try {
      emit(LoadingState());
      WeatherModel weatherModel =
          await Repository().getWeather(cityName: cityName);
      emit(SuccessState(weatherModel: weatherModel));
    } catch (e) {
      emit(FailureState());
    }
  }
}
