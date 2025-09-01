import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:e_commerce_v2/core/l10n/translations/app_localizations.dart';
import 'package:e_commerce_v2/core/routing/app_router.dart';
import 'package:e_commerce_v2/core/routing/routes.dart';
import 'package:e_commerce_v2/core/theme/app_theme.dart';
import 'core/di/di.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  configureDependencies(); /// دا عشان نعرف الفانكشن بتاع getIt بس عشان استخدمها
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Commerce-App",
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale("en"),
      theme: AppTheme.getLightThemeData(),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: Routes.loginRoute,
    );
  }
}
