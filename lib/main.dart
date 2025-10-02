import 'package:flutter/material.dart';
import 'semantics_demo.dart';
import 'align_transition_demo.dart';
import 'asset_bundle_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Tour',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widgets Tour")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // ---- Semantics Example ----
            SemanticsDemo(),

            SizedBox(height: 50),

            // ---- AlignTransition Example ----
            Text("AlignTransition Demo 👇"),
            SizedBox(height: 200, width: 200, child: AlignTransitionDemo()),

            SizedBox(height: 50),

            // ---- AssetBundle Example ----
            Text("AssetBundle Demo 👇"),
            AssetBundleDemo(),
          ],
        ),
      ),
    );
  }
}
