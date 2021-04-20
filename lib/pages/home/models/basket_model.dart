import 'dart:ui';

import 'package:flutter/foundation.dart';

import 'prices.dart';
import 'products.dart';

@immutable
class BasketModel {
  final int? id;
  final List<Products>? products;
  final List<Prices>? prices;
  final String? uuid;
  final int? user;

  const BasketModel({
    this.id,
    this.products,
    this.prices,
    this.uuid,
    this.user,
  });

  @override
  String toString() {
    return 'BasketModel(id: $id, products: $products, prices: $prices, uuid: $uuid, user: $user)';
  }

  factory BasketModel.fromJson(Map<String, dynamic> json) {
    return BasketModel(
      id: json['id'] as int?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
      prices: (json['prices'] as List<dynamic>?)
          ?.map((e) => Prices.fromJson(e as Map<String, dynamic>))
          .toList(),
      uuid: json['uuid'] as String?,
      user: json['user'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'products': products?.map((e) => e.toJson()).toList(),
      'prices': prices?.map((e) => e.toJson()).toList(),
      'uuid': uuid,
      'user': user,
    };
  }

  BasketModel copyWith({
    int? id,
    List<Products>? products,
    List<Prices>? prices,
    String? uuid,
    int? user,
  }) {
    return BasketModel(
      id: id ?? this.id,
      products: products ?? this.products,
      prices: prices ?? this.prices,
      uuid: uuid ?? this.uuid,
      user: user ?? this.user,
    );
  }

  @override
  bool operator ==(Object o) =>
      o is BasketModel &&
      identical(o.id, id) &&
      identical(o.products, products) &&
      identical(o.prices, prices) &&
      identical(o.uuid, uuid) &&
      identical(o.user, user);

  @override
  int get hashCode => hashValues(id, products, prices, uuid, user);
}
