import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_status.dart';
import 'package:weather_app/presentation/search_screen/search_screen.dart';
import 'package:weather_app/presentation/widgets/empty_weather_body.dart';
import 'package:weather_app/presentation/widgets/weather_info_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return SearchScreen();
                }),
              );
            },
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body:
          BlocBuilder<GetWeatherCubit, WeatherState>(builder: (context, state) {
        switch (state) {
          case EmptyState():
            return EmptyWeatherBody();
          case LoadingState():
            return CircularProgressIndicator();
          case SuccessState():
            return WeatherInfoBody(weatherModel: state.weatherModel,);
          case FailureState():
            return Text('error');
          default:
            return EmptyWeatherBody();
        }
      }),
    );
  }
}
