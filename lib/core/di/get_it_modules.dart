import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class GetItModule { /// انا هنا بردوا عشان افهم get it تعمل dio بس كدا

  Dio getDio(){
    Dio dio = Dio();
    dio.interceptors.add(PrettyDioLogger()); /// دا ما هوا الا حاجة توريني api ردت ولا مردتش فا بتظهر عندك في ال run تحت وكلمة interceptors هوا بيقطع يعني وانتا بتعمل رن قبل ما يطهر الحاجة بتاعة ال api هيطهرهالك تحت بس كدا
    return dio ;
  }
}