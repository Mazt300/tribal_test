import 'package:technical_test/domain/entity/category_entity.dart';

abstract class CategoryRepository {
  
  Future<CategoryEntity> getRandomCategory();
}