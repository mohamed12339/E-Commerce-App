import 'package:e_commerce_v2/core/api_result/api_result.dart';
import 'package:e_commerce_v2/features/auth/domain/repositories/auth_repository.dart';
import 'package:e_commerce_v2/features/network/model/request/login_request/login_request.dart';
import 'package:injectable/injectable.dart';

@injectable ///  هنا بقا i صغيرة مش كابيتال عشان دا مش abstract class وهنا كتبها عشان getit تعملوا ما هيا دية package injectable بتعمل حاجة getit بس generated لوحدها مش هتكتبها زي ال news
class LoginUseCse{
 final AuthRepository _authRepository ;  ///  دا عشان احمل الداتا الي هيا فيها بقا login  الانا هاستخدمها  بس وعرفتلوا ال AuthRepository بتاعة ال domain ودا سبب اني بحط ال AuthRepository في ال domain عشان ال useCase

  LoginUseCse(this._authRepository);

  Future<ApiResult<void>> call(LoginRequest loginRequest)=>
      _authRepository.login(loginRequest);
}