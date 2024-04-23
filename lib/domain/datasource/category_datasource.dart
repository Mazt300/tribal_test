import 'package:technical_test/domain/entity/category_entity.dart';

abstract class CategoryDataSource {
  
  Future<CategoryEntity> getRandomCategory();
}