import 'package:flutter/material.dart';

class StackWidgetScreen extends StatelessWidget {
  const StackWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Positioned(
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 20,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          const Stack(
            fit: StackFit.loose,
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 80,
              ),
              Icon(
                Icons.man,
                size: 60,
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.edit),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
