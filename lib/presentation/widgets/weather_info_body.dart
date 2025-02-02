import 'package:flutter/material.dart';
import 'package:weather_app/model/Weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
            ),
          ),
          Text(
            'updated at: ${weatherModel.date.hour}:${weatherModel.date.minute}',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(weatherModel.image!),
              Text(
                '${weatherModel.temp}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                ),
              ),
              Column(
                children: [
                  Text(
                    'maxTemp:${weatherModel.maxTemp}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'minTemp:${weatherModel.minTemp}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            weatherModel.weatherStateName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}
