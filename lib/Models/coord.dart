class Coord {
  late double lot, lat;
  Coord({required this.lot, required this.lat});

  factory Coord.fromJson(Map<String, dynamic> json) => Coord(
        lot: double.parse(json["lot"]),
        lat: double.parse(json["lat"]),
      );

  Map<String, dynamic> toJson() {
    return {
      "lat": lat,
      "lot": lot,
    };
  }
}
