import 'package:flutter/material.dart';

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded & Flexible Widgets'),
      ),
      body: Row(
        children: [
          Expanded(
              //default-flexfit.tight
              child: Container(
                  height: 100,
                  color: Colors.cyanAccent,
                  child: const Center(
                      child: Text(
                    'Expanded',
                    style: TextStyle(fontSize: 25),
                  )))),
          Flexible(
              //default-flexfit.loose
              fit: FlexFit.tight,
              child: Container(
                  height: 100,
                  color: Colors.purpleAccent,
                  child: const Center(
                      child: Text(
                    'Flexible',
                    style: TextStyle(fontSize: 25),
                  )))),
        ],
      ),
    );
  }
}
