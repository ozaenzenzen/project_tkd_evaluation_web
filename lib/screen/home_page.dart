import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WebPageWidget(
      pageTitle: "Home Page",
      index: 1,
      backgroundDecoration: const BoxDecoration(
        color: Colors.blueGrey,
      ),
      appBar: AppBarMenu(
        appBarTitle: const AppBarTitle.text(
          text: Text("Home Page"),
        ),
        onTapToHomePage: () {},
      ),
      bodyOnFullSize: const Center(
        child: Text("Home Page"),
      ),
      bodyOnHalfSize: const Center(
        child: Text("Home Page"),
      ),
      drawer: const AppDrawer(),
    );
  }
}
