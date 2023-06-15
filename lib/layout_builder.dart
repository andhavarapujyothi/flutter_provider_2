import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Builder'),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.cyanAccent,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Text(
                    'width: ${constraints.maxWidth.toStringAsFixed(1)}\nHeight:\n${constraints.maxHeight.toStringAsFixed(1)}',
                    style: const TextStyle(fontSize: 30),
                  );
                },
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.greenAccent,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Text(
                    'width: \n${constraints.maxWidth.toStringAsFixed(1)}\nHeight:\n${constraints.maxHeight.toStringAsFixed(1)}',
                    style: const TextStyle(fontSize: 30),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
