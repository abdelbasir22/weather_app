import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/get_theme_color.dart';

class HomeViewWidget extends StatelessWidget {
  const HomeViewWidget({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    // WeatherModel weatherModel =
    //     BlocProvider.of<GetWeatherCubit>(context).weatherModel!;

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          getThemeColor(weatherModel.weatherCondition),
          getThemeColor(weatherModel.weatherCondition)[200]!,
          getThemeColor(weatherModel.weatherCondition)[50]!,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  weatherModel.cityName,
                  style: const TextStyle(fontSize: 36),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  weatherModel.country,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),

                Text(
                  weatherModel.weatherCondition,
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 35,
                ),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 120,
                      child: Text(
                        '${weatherModel.temp.round().toString()}°C',
                        style: const TextStyle(
                            fontSize: 72, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Image.network(
                      'https:${weatherModel.image}',
                      height: 100,
                      width: 100,
                    ),
                  ],
                ),

                // CircleAvatar(
                //   backgroundImage: NetworkImage('https:${weatherModel.image}'),
                // ),
                // Image.network(
                //   'https:${weatherModel.image}',
                //   height: 100,
                //   width: 100,
                // ),
                const SizedBox(
                  height: 35,
                ),
                // Text(
                //   '${weatherModel.temp.round().toString()}°C',
                //   style: const TextStyle(
                //       fontSize: 72, fontWeight: FontWeight.bold),
                // ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}  ${weatherModel.date.month}/${weatherModel.date.day}/${weatherModel.date.year}',
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                // Text(
                //   '${weatherModel.date.month}/${weatherModel.date.day}/${weatherModel.date.year}',
                //   style: const TextStyle(fontSize: 24),
                // ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Maxtemp: ${weatherModel.maxTemp.round()}',
                  style: const TextStyle(fontSize: 22),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Maxtemp: ${weatherModel.minTemp.round()}',
                  style: const TextStyle(fontSize: 22),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
