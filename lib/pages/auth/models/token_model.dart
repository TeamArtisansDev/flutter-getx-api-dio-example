import 'package:flutter/foundation.dart';

@immutable
class TokenModel {
	final String? token;

	const TokenModel({this.token});

	@override
	String toString() => 'TokenModel(token: $token)';

	factory TokenModel.fromJson(Map<String, dynamic> json) {
		return TokenModel(
			token: json['token'] as String?,
		);
	}

	Map<String, dynamic> toJson() {
		return {
			'token': token,
		};
	}	

	TokenModel copyWith({
		String? token,
	}) {
		return TokenModel(
			token: token ?? this.token,
		);
	}

	@override
	bool operator ==(Object o) =>
			o is TokenModel &&
			identical(o.token, token);

	@override
	int get hashCode => token.hashCode;
}
