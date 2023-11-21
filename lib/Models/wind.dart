class Wind {
  late double speed, deg;
  Wind({
    required this.speed,
    required this.deg,
  });

  factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        speed: json['speed'],
        deg: json['speed'],
      );

  Map<String, dynamic> toJson() {
    return {
      'speed': speed,
      'deg': deg,
    };
  }
}
