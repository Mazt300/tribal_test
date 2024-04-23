import 'package:technical_test/domain/entity/category_entity.dart';
import 'package:technical_test/domain/repository/category_repository.dart';
import 'package:technical_test/infraestructure/datasource/category_datasource_impl.dart';
import 'package:technical_test/infraestructure/repository/category_repositoty_impl.dart';

class CategoryActions {
  
  final CategoryRepository categoryRepository = CategoryRepositoryImpl(
    categoryDataSource: CategoryDataSourceImpl()
  );

  Future<List<CategoryEntity>> getRandomEntityCategories() async{

    int limitRquest = 20;

    List<CategoryEntity> randomJokes = [];

    try {
      int index = 0;

      while (index <= limitRquest) {
        final response = await categoryRepository.getRandomCategory();
        randomJokes.add(response);
        index ++;
      }

      return randomJokes;

    } catch (e) {
      rethrow;
    }
  }
}