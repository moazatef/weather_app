// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print
import 'package:get/get.dart';

import 'package:weather_app2/Models/current_weather.dart';
import 'package:weather_app2/Models/five_days_forecast.dart';
import 'package:weather_app2/Models/weather.dart';
import 'package:weather_app2/service/weather_service.dart';

class HomeController extends GetxController {
  late String city;
  late double temp, feelslike, tempmin, tempmax, pressure, humidity;
  late List<FiveDaysForecast> fivedaysforecast;
  late List<CurrentWeather> dataList;
  CurrentWeather currentWeather=CurrentWeather();
    Weather weather=Weather();

  HomeController({
    required this.city,
  });

  @override
  void onInit() {
    currentWeather = CurrentWeather(
        feels_like: feelslike,
        humidity: humidity,
        pressure: pressure,
        temp_max: tempmax,
        temp: temp,
        temp_min: tempmin);
    intState();
    getFiveCities();
    super.onInit();
  }

  void getCurrentWeatherdata() {
    WeatherService(city: city).getCurrentWeatherData(
      beforesend: () {},
      onSucsess: (data) {
        currentWeather = data;
        update();
      },
      onError: (error) {
        print(error);
        update();
      },
    );
  }

  void getFiveDayData() {
    WeatherService(city: city).get5ForecastData(
      beforesend: () {},
      onSucsess: (data) {
        fivedaysforecast = data;
        update();
      },
      onError: (error) {
        print(error);
        update();
      },
    );
  }

  void getFiveCities() {
    List<String> cities = [
      'cairo',
      'dubai',
      'abu dhabi',
    ];
    for (var c in cities) {
      WeatherService(city: c).getCurrentWeatherData(
          onSucsess: (data) {
            dataList.add(data);
            update();
          },
          onError: (error) {
            print(error);
            update();
          },
          beforesend: () {});
    }
  }

  void updateWeather() {
    intState();
  }

  void intState() {
    getCurrentWeatherdata();
    getFiveDayData();
  }
}
