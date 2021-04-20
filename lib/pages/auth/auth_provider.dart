import 'package:dio/dio.dart';
import 'package:getx_app/pages/auth/models/token_model.dart';
import 'package:getx_app/shared/api/api_request.dart';
import 'package:getx_app/pages/posts/models/post.dart';

class AuthProvider {
  void postLogin({
    required Map<dynamic, dynamic> data,
    Function()? beforeSend,
    Function(TokenModel response)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    ApiRequest(url: 'en/api/api-token-auth/', data: data).post(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        {
          onSuccess!(TokenModel.fromJson(data));
        }
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}
