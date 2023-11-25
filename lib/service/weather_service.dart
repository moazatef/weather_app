// import 'package:flutter/foundation.dart';
// import 'package:weather_app2/API/api_repo.dart';
// import 'package:weather_app2/Models/current_weather.dart';
// import 'package:weather_app2/Models/five_days_forecast.dart';

//  class WeatherService {
//   late String city;
//   WeatherService({
//     required this.city,
//   });

//   final String baseUrl = "https://api.openweathermap.org/data/2.5";
//   final String appKey = "appid=963f10990bb2cefe95d94a541b6b7c73";

//    void getCurrentWeatherData({
//      Function()? beforesend,
//     required Function(CurrentWeather currentWeather) onSucsess,
//     required Function(dynamic error) onError,
//   }) {
//     final url = "$baseUrl/weather?q=$city&$appKey";
//     APiRepo(url: url, payload: null).getdata(
//       beforesend: () => beforesend,
//       onSucsess: (data) => onSucsess(CurrentWeather.fromJson(data)),
//       onError: (error) => onError(error),
//     );
//   }

//   void get5ForecastData({
//      Function()? beforesend,
//     required Function(List<FiveDaysForecast> fiveDaysForecast) onSucsess,
//     required Function(dynamic error) onError,
//   }) 
//   {
//     final url = "$baseUrl/forecast?q=$city&$appKey";
//     if (kDebugMode) {
//       print(url);
//     }
//     APiRepo(url: url, payload: null).getdata(
//       beforesend: () => beforesend,
//       onSucsess:(data)=>{(data['list'] as List)
//               .map((e) => FiveDaysForecast.fromJson(e))
//               .toList()},
//       onError: (error) => onError(error),
//     );
//   }
// }
