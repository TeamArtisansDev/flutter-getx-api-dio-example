import 'package:dio/dio.dart';
import 'package:getx_app/shared/constants/api_const.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'interceptors/auth_interceptor.dart';
//import 'package:flutter/foundation.dart';

class ApiRequest {
  final String url;
  final Map? data;

  ApiRequest({
    required this.url,
    this.data,
  });

  Dio _dio() {
    Dio dio = new Dio();
    dio.interceptors.add(AuthInterceptor());
    dio.options.baseUrl = APIUrlConstants.DEV_API_BASE_URL;
    dio.options.connectTimeout = const Duration(minutes: 1).inMilliseconds;
    dio.options.receiveTimeout = const Duration(minutes: 1).inMilliseconds;

    if (APIUrlConstants.debug) {
      dio.interceptors.add(PrettyDioLogger());
    }
    return dio;
  }

  void get(
      {Function()? beforeSend,
      Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      dynamic? data}) {
    _dio()
        .get(this.url, queryParameters: this.data as Map<String, dynamic>?)
        .then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }

  void post(
      {Function()? beforeSend,
      Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      dynamic? data}) {
    _dio().post(this.url, data: this.data as Map<String, dynamic>?).then((res) {
      if (onSuccess != null) onSuccess(res.data);
    }).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}
