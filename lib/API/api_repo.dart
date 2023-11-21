// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class APiRepo {
  late final Dio _dio;
  late Map<String, dynamic>? payload;
  late String url;
  APiRepo({
    required this.payload,
    required this.url,
  });

  void getdata({
    required Function() beforesend,
    required Function(Map<String, dynamic> data) onSucsess,
    required Function(dynamic error) onError,
  }) {
    _dio
        .get(url, queryParameters: payload)
        .then((response) => {
              {onSucsess(response.data)}
            })
        // ignore: body_might_complete_normally_catch_error
        .catchError((error) {
      onError(error);
        });
  }
}
