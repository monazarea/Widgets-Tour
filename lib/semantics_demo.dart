import 'package:flutter/material.dart';

class SemanticsDemo extends StatelessWidget {
  const SemanticsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Semantics(
          label: "Volume",
          hint: "Swipe up or down to adjust",
          value: "20 percent",
          increasedValue: "60 percent",
          decreasedValue: "40 percent",
          excludeSemantics: true,
          child: Slider(
            value: 0.2,
            onChanged: (val) {},
          ),
        ),
        const Text("Without ExcludeSemantics 👇"),
        ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.play_arrow),
              SizedBox(width: 5),
              Text("Play"),
            ],
          ),
        ),
        const SizedBox(height: 30),
        const Text("With ExcludeSemantics 👇"),
        Semantics(
          label: "Play Button",
          child: ExcludeSemantics(
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.play_arrow),
                  SizedBox(width: 5),
                  Text("Play"),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
