import 'package:flutter/material.dart';

class BottomModalScreen extends StatelessWidget {
  const BottomModalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Modal Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (builder) {
                    return Column(
                      children: [
                        ListTile(
                          title: const Text('Home'),
                          leading: const Icon(Icons.home),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        const ListTile(
                          title: Text('Settings'),
                          leading: Icon(Icons.settings),
                        ),
                        const ListTile(
                          title: Text('Share'),
                          leading: Icon(Icons.share),
                        ),
                        const ListTile(
                          title: Text('Edit'),
                          leading: Icon(Icons.edit),
                        )
                      ],
                    );
                  });
            },
            child: const Text('Bottom Modal Sheet')),
      ),
    );
  }
}
