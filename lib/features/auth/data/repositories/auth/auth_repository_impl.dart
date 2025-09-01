import 'package:e_commerce_v2/core/api_result/api_result.dart';
import 'package:e_commerce_v2/features/auth/data/repositories/auth/data_sources/auth_remote_data_source.dart';
import 'package:e_commerce_v2/features/auth/domain/repositories/auth_repository.dart';
import 'package:e_commerce_v2/features/network/model/request/login_request/login_request.dart';
import 'package:e_commerce_v2/features/network/model/request/register_request/register_request.dart';
import 'package:e_commerce_v2/features/network/model/response/token_request/token_response.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepository) /// وهنا نفس الكلام بتاع authRemoteDataSourceImpl اهم حاجة انا مستخدم Injectable الي هيا بال I كدا عشان  دية انا عملتها عشان اقولوا لو طلبت abstract class دا   (as: AuthRepository) دا ابعتلي child ال (AuthRepositoryImpl) بتاعوا زي ال news كدا لما عملتها في get it فايل بالظبط  بس هنا بقا هايعملها لوحدوا generated

class AuthRepositoryImpl extends AuthRepository{ /// دا مهمتوا انو يحمل الداتا  هانخلي عندوا الداتا الي هيا api ونبعتها لل view new model طب ولية انا عملت كدا عشان اعرف ال الحاجة  online الي هوا ال remote
  AuthRemoteDataSource _remoteDataSource ;
  AuthRepositoryImpl(this._remoteDataSource);

  @override
  Future<ApiResult<void>> login(LoginRequest loginRequest) async{
    ApiResult<TokenResponse> apiResult = await _remoteDataSource.login(loginRequest); /// انا هنا بندة ال api بتاع ال  login وال retrofit package هاتكمل بقا ودية حلاوتها لانها عاملة genetrated لوحدها من عن طرق تكتب في ال terminal dart pub run build_runner build بس كدا وهيا تعمل api login هتلاقية معمول عندها في الفايل بتاعها
    if(apiResult is SuccessApiResult){ /// هنا لو success مترجعش token response جطوا ب null
      // todo save token response in shared
      return SuccessApiResult(null);
    }else{
      return apiResult ;
    }
  }

  @override
  Future<ApiResult<void>> register(RegisterRequest request) async {
    ApiResult<TokenResponse> apiResult = await _remoteDataSource.register(request); /// انا هنا بندة ال api بتاع ال  login وال retrofit package هاتكمل بقا ودية حلاوتها لانها عاملة genetrated لوحدها من عن طرق تكتب في ال terminal dart pub run build_runner build بس كدا وهيا تعمل api login هتلاقية معمول عندها في الفايل بتاعها
    if(apiResult is SuccessApiResult){ /// هنا لو success مترجعش token response جطوا ب null
      // todo save token response in shared
      return SuccessApiResult(null);
    }else{
      return apiResult ;
    }
  }
}