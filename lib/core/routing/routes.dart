import 'package:flutter/material.dart';

import '../../features/auth/ui/login/view/register.dart';

abstract class Routes {
  static const String navigationRoute = "/navigation";
  static const String loginRoute = '/login';
  static Route get register {
    return MaterialPageRoute(builder: (_) => Register());
  }
}
