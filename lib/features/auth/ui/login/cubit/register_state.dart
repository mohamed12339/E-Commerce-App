import 'package:e_commerce_v2/core/api_result/api_result.dart';

class RegisterState{ /// يبقا ال دا كدا ال state بتاع ال cubit ودية هبعتها في ال loginCubit
  late ApiResult<void> registerApi; /// انا كنت في ال news عملت variables isloading and source كدا لا انا هنا انا اصلا لميتهم في ال ApiResult بس

  RegisterState.initial(){  /// دا  البداية بتاعتي ودا  الي هاكتبوا في ال super عشان اعرفوا ApiResult هيعمل اية بس
    registerApi = InitialApiResult();  /// هيا دية الانا عملتها في ال apiResult فايل اصلا عشان استخمها هنا وفي ال cubit بقا
  }

  RegisterState({required this.registerApi});
}