import 'package:flutter/material.dart';

class MediaQueryScreen extends StatefulWidget {
  const MediaQueryScreen({super.key});

  @override
  State<MediaQueryScreen> createState() => _MediaQueryScreenState();
}

class _MediaQueryScreenState extends State<MediaQueryScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(title: const Text('MediaQuery Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Width: ${size.width.toStringAsFixed(1)}",
              style: const TextStyle(fontSize: 20),
            ),
            Text("Height: ${size.height.toStringAsFixed(1)}",
                style: const TextStyle(fontSize: 20)),
            Text(
              "Orientation: $orientation",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
