import 'package:flutter/material.dart';
import 'package:weather_app/presentation/widgets/custom_text_field.dart';

class SearchScreen  extends StatelessWidget{
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search City',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
      body:CustomTextField(),
    );
  }
}

