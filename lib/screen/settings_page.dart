import 'package:flutter/material.dart';
import 'package:responsive_mpa_web/responsive_mpa_web.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return WebPageWidget(
      pageTitle: "Settings Page",
      index: 3,
      backgroundDecoration: const BoxDecoration(
        color: Colors.blueGrey,
      ),
      appBar: AppBarMenu(
        appBarTitle: const AppBarTitle.text(
          text: Text("Settings Page"),
        ),
        onTapToHomePage: () {},
      ),
      bodyOnFullSize: const Center(
        child: Text("Settings Page"),
      ),
      bodyOnHalfSize: const Center(
        child: Text("Settings Page"),
      ),
      drawer: const AppDrawer(),
    );
  }
}
