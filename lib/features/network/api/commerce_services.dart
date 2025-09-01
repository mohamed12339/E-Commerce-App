import 'package:dio/dio.dart';
import 'package:e_commerce_v2/features/network/model/request/login_request/login_request.dart';
import 'package:e_commerce_v2/features/network/model/request/register_request/register_request.dart';
import 'package:e_commerce_v2/features/network/model/response/token_request/token_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'commerce_services.g.dart'; /// دا هيتعمل لوحدوا عن طريق   build_runner

@RestApi(baseUrl: 'https://ecommerce.routemisr.com/api/v1/')
@injectable /// دا عشان يعرف ال CommerceServices عند ال get it
abstract class CommerceServices { /// طب عشان استخدمها بقا
  @factoryMethod /// دا  كمان بردوا عشان يعرف ال CommerceServices عند ال get it
  factory CommerceServices(Dio dio) = _CommerceServices; /// الفايل دا ضارب ايرور او لما كان ضارب ايرور عشان انا نزلت retrofit package موجودة dependicece وال dev dependancies وال dev دية هيا عبارة عن انك زي بعمل test لحاجة او بضيف كود لوحدوا مجرد اكتب حاجة في ال terminal وهوا يضيفها لوحدوا بس  بتعمل generate لوحدها عشان تعمل clean architecture لوحدها مش زي ال news لما عملتوا فيها  فا لما تحط كدا كود dart pub run build_runner build في ال terminal هيعمل الفايل دا لوحدوا


  @POST('/auth/signin')
  Future<TokenResponse> login(@Body() LoginRequest loginRequest); ///  دية @Body() عشان يعرف يعمل generate لل _CommerceServices بدل ما روحت وعملت في ال news عملت apiManager لا هنا انا عرفت نوعوا اية زي post واديتوا ال ال path يعني بس وهوا عملوا نفس الكلام برودو في ال login وال token وال user


 @POST('/auth/signup')
Future<TokenResponse> register(@Body() RegisterRequest request); ///  دية @Body() عشان يعرف يعمل generate لل _CommerceServices بدل ما روحت وعملت في ال news عملت apiManager لا هنا انا عرفت نوعوا اية زي post واديتوا ال ال path يعني بس وهوا عملوا نفس الكلام برودو في ال login وال token وال user
}
