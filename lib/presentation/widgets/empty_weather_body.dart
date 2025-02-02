import 'package:flutter/material.dart';

class EmptyWeatherBody extends StatelessWidget {
  const EmptyWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'there is no weather :( Start',
            style: TextStyle(
              fontSize: 32,
            ),
          ),
          Text(
            'searching now <3',
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}
