import 'package:flutter/material.dart';

class VisibilityScreen extends StatefulWidget {
  const VisibilityScreen({super.key});

  @override
  State<VisibilityScreen> createState() => _VisibilityScreenState();
}

class _VisibilityScreenState extends State<VisibilityScreen> {
  bool show = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('visibility'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: show,
                maintainAnimation: true,
                maintainSize: true,
                maintainState: true,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.orange,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      show = !show;
                    });
                  },
                  child: const Text('Show & Hide'))
            ],
          ),
        ));
  }
}
