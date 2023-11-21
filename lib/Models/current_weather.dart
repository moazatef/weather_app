// ignore_for_file: non_constant_identifier_names

class CurrentWeather {
   double? temp, feels_like, temp_min, temp_max, pressure, humidity;
  CurrentWeather({
     this.feels_like,
     this.humidity,
     this.pressure,
     this.temp_max,
     this.temp,
     this.temp_min,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) => CurrentWeather(
        feels_like: json["feels_like"],
        humidity: json["humidity"],
        pressure: json["pressure"],
        temp: json["feels_like"],
        temp_max: json["temp"],
        temp_min: json["temp_min"],
      );

  Map<String, dynamic> toJson() {
    return {
      "feels_like": feels_like,
      "humidity": humidity,
      "pressure": pressure,
      "temp": feels_like,
      "temp_max": temp,
      "temp_min": temp_min
    };
  }
}
