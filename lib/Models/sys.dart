// // ignore_for_file: public_member_api_docs, sort_constructors_first
// class Sys {
//   late int type, id, sunrise, sunset;
//   late String country;
//   Sys({
//     required this.type,
//     required this.id,
//     required this.sunrise,
//     required this.sunset,
//     required this.country,
//   });

//   factory Sys.toJson(Map<String, dynamic> json) => Sys(
//         type: json["type"],
//         id: json["id"],
//         sunrise: json["sunrise"],
//         sunset: json["sunset"],
//         country: json["country"],
//       );

//   Map<String, dynamic> toJson() {
//     return {
//       "type": type,
//       "id": id,
//       "sunrise": sunrise,
//       "sunset": sunset,
//       "country": country,
//     };
//   }
// }
