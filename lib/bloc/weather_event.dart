part of 'weather_bloc.dart';

@immutable
sealed class WeatherEvent {
  List<Object>get props =>[];
}


class FetchWeatherdata extends WeatherEvent{
  final Position position;
   FetchWeatherdata(this.position);
   @override
     List<Object> get props =>[position];

}