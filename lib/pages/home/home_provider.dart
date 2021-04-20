import 'package:getx_app/pages/auth/models/token_model.dart';
import 'package:getx_app/pages/home/models/basket_model.dart';
import 'package:getx_app/shared/api/api_request.dart';

class HomeProvider {
  void getBasket({
    Function()? beforeSend,
    Function(BasketModel response)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    ApiRequest(url: 'tr/api/getBasket/').get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        {
          onSuccess!((data as List)
              .map((json) => BasketModel.fromJson(json))
              .toList()[0]);
        }
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}
