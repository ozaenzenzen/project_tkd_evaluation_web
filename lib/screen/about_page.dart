import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return WebPageWidget(
      pageTitle: "About Page",
      index: 3,
      backgroundDecoration: const BoxDecoration(
        color: Colors.blueGrey,
      ),
      appBar: AppBarMenu(
        appBarTitle: const AppBarTitle.text(
          text: Text("About Page"),
        ),
        onTapToHomePage: () {},
      ),
      bodyOnFullSize: const Center(
        child: Text("About Page"),
      ),
      bodyOnHalfSize: const Center(
        child: Text("About Page"),
      ),
      drawer: const AppDrawer(),
    );
  }
}