import 'dart:ui';

import 'package:flutter/foundation.dart';

import 'product.dart';

@immutable
class Prices {
  final Product? product;
  final double? multiplier;
  final String? price;
  final int? count;
  final String? totalPrice;

  const Prices({
    this.product,
    this.multiplier,
    this.price,
    this.count,
    this.totalPrice,
  });

  @override
  String toString() {
    return 'Prices(product: $product, multiplier: $multiplier, price: $price, count: $count, totalPrice: $totalPrice)';
  }

  factory Prices.fromJson(Map<String, dynamic> json) {
    return Prices(
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      multiplier: json['multiplier'] as double?,
      price: json['price'] as String?,
      count: json['count'] as int?,
      totalPrice: json['total_price'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product': product?.toJson(),
      'multiplier': multiplier,
      'price': price,
      'count': count,
      'total_price': totalPrice,
    };
  }

  Prices copyWith({
    Product? product,
    double? multiplier,
    String? price,
    int? count,
    String? totalPrice,
  }) {
    return Prices(
      product: product ?? this.product,
      multiplier: multiplier ?? this.multiplier,
      price: price ?? this.price,
      count: count ?? this.count,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  @override
  bool operator ==(Object o) =>
      o is Prices &&
      identical(o.product, product) &&
      identical(o.multiplier, multiplier) &&
      identical(o.price, price) &&
      identical(o.count, count) &&
      identical(o.totalPrice, totalPrice);

  @override
  int get hashCode {
    return hashValues(
      product,
      multiplier,
      price,
      count,
      totalPrice,
    );
  }
}
