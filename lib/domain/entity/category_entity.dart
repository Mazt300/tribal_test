import 'package:technical_test/infraestructure/model/category_response_model.dart';

class CategoryEntity {
    final List<String> categories;
    final DateTime createdAt;
    final String iconUrl;
    final String id;
    final DateTime updatedAt;
    final String url;
    final String value;

    CategoryEntity({
        required this.categories,
        required this.createdAt,
        required this.iconUrl,
        required this.id,
        required this.updatedAt,
        required this.url,
        required this.value,
    });

    CategoryResponseModel toModel() => CategoryResponseModel(
      categories: categories, 
      createdAt: createdAt, 
      iconUrl: iconUrl, 
      id: id, 
      updatedAt: updatedAt, 
      url: url, 
      value: value
    );

}