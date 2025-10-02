import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class AssetBundleDemo extends StatefulWidget {
  const AssetBundleDemo({super.key});

  @override
  State<AssetBundleDemo> createState() => _AssetBundleDemoState();
}

class _AssetBundleDemoState extends State<AssetBundleDemo> {
  String? data;

  Future<void> loadJson() async {
    final jsonString = await rootBundle.loadString("assets/lang/en.json");
    final jsonData = jsonDecode(jsonString);
    setState(() {
      data = jsonData["hello"]; // مثال: Hello!
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: loadJson,
          child: const Text("Load JSON from assets"),
        ),
        const SizedBox(height: 10),
        Text(data ?? "Press button to load data"),
      ],
    );
  }
}
