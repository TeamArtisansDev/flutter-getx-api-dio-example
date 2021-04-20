import 'dart:ui';

import 'package:flutter/foundation.dart';

@immutable
class Product {
	final String? name;
	final String? fabric;
	final String? modelWoAvatar;
	final String? price;

	const Product({
		this.name,
		this.fabric,
		this.modelWoAvatar,
		this.price,
	});

	@override
	String toString() {
		return 'Product(name: $name, fabric: $fabric, modelWoAvatar: $modelWoAvatar, price: $price)';
	}

	factory Product.fromJson(Map<String, dynamic> json) {
		return Product(
			name: json['name'] as String?,
			fabric: json['fabric'] as String?,
			modelWoAvatar: json['modelWoAvatar'] as String?,
			price: json['price'] as String?,
		);
	}

	Map<String, dynamic> toJson() {
		return {
			'name': name,
			'fabric': fabric,
			'modelWoAvatar': modelWoAvatar,
			'price': price,
		};
	}	

	Product copyWith({
		String? name,
		String? fabric,
		String? modelWoAvatar,
		String? price,
	}) {
		return Product(
			name: name ?? this.name,
			fabric: fabric ?? this.fabric,
			modelWoAvatar: modelWoAvatar ?? this.modelWoAvatar,
			price: price ?? this.price,
		);
	}

	@override
	bool operator ==(Object o) =>
			o is Product &&
			identical(o.name, name) &&
			identical(o.fabric, fabric) &&
			identical(o.modelWoAvatar, modelWoAvatar) &&
			identical(o.price, price);

	@override
	int get hashCode => hashValues(name, fabric, modelWoAvatar, price);
}
