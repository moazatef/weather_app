// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:weather_app2/Models/clouds.dart';
import 'package:weather_app2/Models/coord.dart';
import 'package:weather_app2/Models/current_weather.dart';
import 'package:weather_app2/Models/sys.dart';
import 'package:weather_app2/Models/weather.dart';
import 'package:weather_app2/Models/wind.dart';

class GetCurrentWeather {
  Coord coord;
  List<Weather> weather;
  String base;
  CurrentWeather currentWeather;
  Wind wind;
  Sys sys;
  Clouds clouds;
  int timezone, id, cod, dt, visibility;
  String name;
  GetCurrentWeather({
    required this.coord,
    required this.weather,
    required this.base,
    required this.currentWeather,
    required this.wind,
    required this.sys,
    required this.clouds,
    required this.visibility,
    required this.name,
    required this.id,
    required this.timezone,
    required this.cod,
    required this.dt,
  });

  factory GetCurrentWeather.fromJson(Map<String, dynamic> json) =>
      GetCurrentWeather(
        coord: json["coord"],
        weather: json["weather"],
        base: json["base"],
        currentWeather: json["currentWeather"],
        wind: json["wind"],
        sys: json["sys"],
        clouds: json["clouds"],
        visibility: json["visibility"],
        name: json["name"],
        id: json["id"],
        timezone: json["timezone"],
        cod: json["cod"],
        dt: json["dt"],
      );
}
