import 'dart:convert';

import 'package:injectable/injectable.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../features/network/model/response/user/user_response.dart';

@injectable /// دا عشان يعرف ال SharedPrefsHelper عند ال get it
class SharedPrefsHelper{ ///  دا عشان اخزن ال token واخزن ال user عشان لو عملت login مرة واحدة او register مرة واحدة خلاص يتسجل ويفضل علي طول في ال homeScreen حتب لو عملت run
  Future<void> saveToken(String token) async{ /// انا هاخزن ال token
    final SharedPreferences prefs = await SharedPreferences.getInstance(); /// طبعا دا بتعرف ال SharedPreferences
    prefs.setString("token", token); /// انا هنا بقولوا setString يعني معناها اني بقولوا خزن ال token دا

  }

  Future<String?> getToken() async { /// وهنا هايجيب ال token الي خزنوا بقا
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("token"); /// هنا getString بقولوا جيب الي اتخزن ال هوا  token
  }
  Future<void> saveUser(UserResponse user) async { /// هنا بقا المشكلة انا مقدرش اخزنوا علي انو userRespnse عادي انا عايز اخزنوا علي انو user بس اقدر اخد ال userRespone احولوا ل map يعني اقولوا to json
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("user", jsonEncode(user.toJson())); /// طيب jsonEncode دية بتاخد مني ال json وبتحولوا ل string يعني هتاخد ال user وتحولوا ل  tojson الي  string  بس
  }
  Future<UserResponse?> getUser() async { /// هنا بقا بردو المشكلة انا مقدرش اخد الي اتخزن علي انو  userRespnse عادي انا عايز اخدوا علي انو user بس اقدر اخد ال userRespone احولوا ل map يعني اقولوا
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? encodedJson = prefs.getString("user"); /// هنا getString بقولوا جيب الي اتخزن ال هوا  user
    if(encodedJson == null) return null; /// لو ممكن ميكونش فية  user خلاص رجع null مفيش حاجة بس
    var json = jsonDecode(encodedJson);  /// انا لما حبيت احول من json ل string عملت jsonEncode طب اعكسها ازاي ب كدا jsonDecode معناها  بقولوا رجعلي ال string رجعوا ل json تاني ب fromJson  طبعا
    return UserResponse.fromJson(json); /// شرح في السطر 29
  }
}