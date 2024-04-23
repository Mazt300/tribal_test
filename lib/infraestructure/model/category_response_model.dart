import 'dart:convert';

import 'package:technical_test/domain/entity/category_entity.dart';

class CategoryResponseModel extends CategoryEntity{

    CategoryResponseModel({
        required super.categories,
        required super.createdAt,
        required super.iconUrl,
        required super.id,
        required super.updatedAt,
        required super.url,
        required super.value,
    });

    CategoryResponseModel categoryResponseModelFromJson(String str) => CategoryResponseModel.fromJson(json.decode(str));

    String categoryResponseModelToJson(CategoryResponseModel data) => json.encode(data.toJson());

    CategoryResponseModel copyWith({
        List<String>? categories,
        DateTime? createdAt,
        String? iconUrl,
        String? id,
        DateTime? updatedAt,
        String? url,
        String? value,
    }) => 
        CategoryResponseModel(
            categories: categories ?? this.categories,
            createdAt: createdAt ?? this.createdAt,
            iconUrl: iconUrl ?? this.iconUrl,
            id: id ?? this.id,
            updatedAt: updatedAt ?? this.updatedAt,
            url: url ?? this.url,
            value: value ?? this.value,
        );

    factory CategoryResponseModel.fromJson(Map<String, dynamic> json) => CategoryResponseModel(
        categories: List<String>.from(json["categories"].map((x) => x)),
        createdAt: DateTime.parse(json["created_at"]),
        iconUrl: json["icon_url"],
        id: json["id"],
        updatedAt: DateTime.parse(json["updated_at"]),
        url: json["url"],
        value: json["value"],
    );

    Map<String, dynamic> toJson() => {
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "created_at": createdAt.toIso8601String(),
        "icon_url": iconUrl,
        "id": id,
        "updated_at": updatedAt.toIso8601String(),
        "url": url,
        "value": value,
    };
}
