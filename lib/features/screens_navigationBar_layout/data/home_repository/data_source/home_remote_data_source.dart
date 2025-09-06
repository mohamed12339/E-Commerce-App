import '../../../../../core/api_result/api_result.dart';
import '../../../../network/model/categories/categories_response.dart';
import '../../../../network/model/products/products_response.dart';

abstract class HomeRemoteDataSource{ /// دا الداتا الاونلاين دا هوا ال abstract الي مش هابعت فية الحاجة ال impl هوا الي هايبعت الحاجة

  Future<ApiResult<CategoriesResponse>> loadCategories();  /// انا هنا بقولوا رجعلي apiResults عشان لو فية ايرور كدا فهل هيبقا success or error or loading or initial  وكمان هيا مش هترجع api result بس لا هترجعوا علي انو CategoriesResponse ودية فايدة tempelete الي عملتها هناك في ال apiResult الانا عملتها هناك

  Future<ApiResult<ProductsResponse>> loadProducts(); /// نفس الكلام هنا
}