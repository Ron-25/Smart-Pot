import 'package:flutter/material.dart';
import 'package:smart_pot/application/application.dart';
import 'package:smart_pot/features/principal_view/presentation/pages/welcome_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa el inyectador
  Injector.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Smart Pot',
        theme: AppTheme.light,
        localizationsDelegates: AppLocalizationSetup.localizationsDelegates,
        supportedLocales: AppLocalizationSetup.supportedLocales,
        themeAnimationCurve: Curves.easeInOut,
        debugShowCheckedModeBanner: false,
        themeAnimationDuration: const Duration(milliseconds: 300),
        themeAnimationStyle: AnimationStyle(
          curve: Curves.easeInOut,
          duration:  const Duration(milliseconds: 300),
          reverseCurve: Curves.easeInOut,
          reverseDuration:  const Duration(milliseconds: 300),
        ),
        home: const WelcomePage()
      );
  }
}