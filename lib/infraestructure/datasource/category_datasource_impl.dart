import 'package:technical_test/domain/datasource/category_datasource.dart';
import 'package:technical_test/domain/entity/category_entity.dart';
import 'package:technical_test/infraestructure/model/category_response_model.dart';
import 'package:technical_test/utils/http_helper.dart';

class CategoryDataSourceImpl extends CategoryDataSource{

  @override
  Future<CategoryEntity> getRandomCategory() async{
    final response = await request(
      nameSpace: '/jokes/random'
    );

    final CategoryEntity categoryEntity = CategoryResponseModel.fromJson(response.data);
    
    return categoryEntity;
  }
  

}