import 'dart:ui';

import 'package:flutter/foundation.dart';

import 'product.dart';

@immutable
class Products {
  final int? id;
  final Product? product;
  final String? standart;
  final String? totalPrice;
  final List<dynamic>? steps;
  final String? letter;
  final String? size;
  final int? cmOrInch;
  final int? bust;
  final int? waist;
  final int? hips;
  final int? height;
  final int? count;

  const Products({
    this.id,
    this.product,
    this.standart,
    this.totalPrice,
    this.steps,
    this.letter,
    this.size,
    this.cmOrInch,
    this.bust,
    this.waist,
    this.hips,
    this.height,
    this.count,
  });

  @override
  String toString() {
    return 'Products(id: $id, product: $product, standart: $standart, totalPrice: $totalPrice, steps: $steps, letter: $letter, size: $size, cmOrInch: $cmOrInch, bust: $bust, waist: $waist, hips: $hips, height: $height, count: $count)';
  }

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      id: json['id'] as int?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      standart: json['standart'] as String?,
      totalPrice: json['total_price'] as String?,
      steps: json['steps'] as List<dynamic>?,
      letter: json['letter'] as String?,
      size: json['size'] as String?,
      cmOrInch: json['cm_or_inch'] as int?,
      bust: json['bust'] as int?,
      waist: json['waist'] as int?,
      hips: json['hips'] as int?,
      height: json['height'] as int?,
      count: json['count'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product': product?.toJson(),
      'standart': standart,
      'total_price': totalPrice,
      'steps': steps,
      'letter': letter,
      'size': size,
      'cm_or_inch': cmOrInch,
      'bust': bust,
      'waist': waist,
      'hips': hips,
      'height': height,
      'count': count,
    };
  }

  Products copyWith({
    int? id,
    Product? product,
    String? standart,
    String? totalPrice,
    List<String>? steps,
    String? letter,
    String? size,
    int? cmOrInch,
    int? bust,
    int? waist,
    int? hips,
    int? height,
    int? count,
  }) {
    return Products(
      id: id ?? this.id,
      product: product ?? this.product,
      standart: standart ?? this.standart,
      totalPrice: totalPrice ?? this.totalPrice,
      steps: steps ?? this.steps,
      letter: letter ?? this.letter,
      size: size ?? this.size,
      cmOrInch: cmOrInch ?? this.cmOrInch,
      bust: bust ?? this.bust,
      waist: waist ?? this.waist,
      hips: hips ?? this.hips,
      height: height ?? this.height,
      count: count ?? this.count,
    );
  }

  @override
  bool operator ==(Object o) =>
      o is Products &&
      identical(o.id, id) &&
      identical(o.product, product) &&
      identical(o.standart, standart) &&
      identical(o.totalPrice, totalPrice) &&
      identical(o.steps, steps) &&
      identical(o.letter, letter) &&
      identical(o.size, size) &&
      identical(o.cmOrInch, cmOrInch) &&
      identical(o.bust, bust) &&
      identical(o.waist, waist) &&
      identical(o.hips, hips) &&
      identical(o.height, height) &&
      identical(o.count, count);

  @override
  int get hashCode {
    return hashValues(
      id,
      product,
      standart,
      totalPrice,
      steps,
      letter,
      size,
      cmOrInch,
      bust,
      waist,
      hips,
      height,
      count,
    );
  }
}
