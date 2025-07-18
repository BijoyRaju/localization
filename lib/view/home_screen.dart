import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:localization_eg/localization/locales.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FlutterLocalization localization = FlutterLocalization.instance;

  String selectedLang = "en";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleData.title.getString(context)),
        actions: [
          DropdownButton<String>(
            value: selectedLang,
            underline: const SizedBox(),
            icon: const Icon(Icons.language, color: Colors.white),
            items: const [
              DropdownMenuItem(value: "en", child: Text("English")),
              DropdownMenuItem(value: "ml", child: Text("Malayalam")),
              DropdownMenuItem(value: "hi", child: Text("Hindi")),
            ],
            onChanged: (value) {
              setState(() {
                selectedLang = value!;
                localization.translate(value);
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          LocaleData.body.getString(context),
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

