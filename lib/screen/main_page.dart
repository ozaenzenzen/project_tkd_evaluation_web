import 'package:flutter/material.dart';
import 'package:project_tkd_evaluation_web/helper/fade_route.dart';
import 'package:project_tkd_evaluation_web/screen/about_page.dart';
import 'package:project_tkd_evaluation_web/screen/home_page.dart';
import 'package:project_tkd_evaluation_web/screen/settings_page.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WebPageView(
      listMenuBar: [
        AppBarMenuButton(
          pageTitle: "Home Page",
          indexPage: 1,
          menuText: Text("Home Page"),
          onTap: () {
            Navigator.push(
              context,
              FadeInRoute(
                page: const HomePage(),
                routeName: '/homepage',
              ),
            );
          },
        ),
        AppBarMenuButton(
          pageTitle: "Settings Page",
          indexPage: 2,
          menuText: Text("Settings Page"),
          onTap: () {
            Navigator.push(
              context,
              FadeInRoute(
                page: const SettingsPage(),
                routeName: '/settingspage',
              ),
            );
          },
        ),
        AppBarMenuButton(
          pageTitle: "About Page",
          indexPage: 3,
          menuText: Text("About Page"),
          onTap: () {
            Navigator.push(
              context,
              FadeInRoute(
                page: const AboutPage(),
                routeName: '/aboutpage',
              ),
            );
          },
        ),
      ],
      listWebPages: [
        HomePage(),
        SettingsPage(),
        AboutPage(),
      ],
    );
  }
}
