import 'package:flutter/material.dart';
import 'package:project_tkd_evaluation_web/screen/about_page.dart';
import 'package:project_tkd_evaluation_web/screen/home_page.dart';
import 'package:project_tkd_evaluation_web/screen/main_page.dart';
import 'package:project_tkd_evaluation_web/screen/settings_page.dart';
import 'package:project_tkd_evaluation_web/screen/unknown_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        debugPrint("[onGenerateRoute] settings name ${settings.name}");
        if (settings.name == "/homepage") {
          return PageRouteBuilder(
            settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (_, __, ___) => const HomePage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
            ),
          );
        }
        if (settings.name == "/settingspage") {
          return PageRouteBuilder(
            settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (_, __, ___) => const SettingsPage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
            ),
          );
        }
        if (settings.name == "/aboutpage") {
          return PageRouteBuilder(
            settings: settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
            pageBuilder: (_, __, ___) => const AboutPage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
              opacity: a,
              child: c,
            ),
          );
        }
        return null;
      },
      routes: {
        // '/': (context) => const HomeScreen(),
        /// This is HomeScreen widget looks like
        '/': (context) {
          return const MyHomePage(title: '',);
        },
        '/settingspage': (context) => const SettingsPage(),
        '/aboutpage': (context) => const AboutPage(),
        '/404': (context) => const UnknownPage(),
      },
    );
  }
}
