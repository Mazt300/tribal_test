import 'package:technical_test/domain/datasource/category_datasource.dart';
import 'package:technical_test/domain/entity/category_entity.dart';
import 'package:technical_test/domain/repository/category_repository.dart';

class CategoryRepositoryImpl  extends CategoryRepository {

  CategoryRepositoryImpl({
    required this.categoryDataSource
  });

  final CategoryDataSource categoryDataSource;
  @override
  Future<CategoryEntity> getRandomCategory() async{
    try {
      
      return  await categoryDataSource.getRandomCategory();
    } catch (e) {
      rethrow;
    }
  }
  
}