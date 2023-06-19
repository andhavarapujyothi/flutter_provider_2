import 'package:flutter/material.dart';

class OverlayScreen extends StatelessWidget {
  const OverlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overlay Widget'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () async {
                OverlayState overlayState = Overlay.of(context);
                OverlayEntry overlayEntry = OverlayEntry(
                    //opaque: true,
                    builder: (context) {
                  return const Positioned(
                      top: 150,
                      left: 50,
                      child: Material(
                          color: Colors.greenAccent,
                          child: Text(
                            'Overlay Widget',
                            style: TextStyle(fontSize: 30),
                          )));
                });
                OverlayEntry overlayEntry2 = OverlayEntry(builder: (context) {
                  return const Positioned(
                      bottom: 150,
                      right: 50,
                      child: Material(
                          color: Colors.cyanAccent,
                          child: Text(
                            'Overlay Widget2',
                            style: TextStyle(fontSize: 30),
                          )));
                });
                overlayState.insert(overlayEntry);
                overlayState.insert(overlayEntry2);
                await Future.delayed(const Duration(seconds: 4));
                overlayEntry.remove();
                overlayEntry2.remove();
              },
              child: const Text('show'))),
    );
  }
}
