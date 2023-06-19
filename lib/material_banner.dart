import 'package:flutter/material.dart';

class MaterialBannerScreen extends StatelessWidget {
  const MaterialBannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Banner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  MaterialBanner materialBanner = MaterialBanner(
                      leading: const Icon(Icons.search),
                      backgroundColor: Colors.amberAccent,
                      content: const Text('I am the new banner'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentMaterialBanner();
                            },
                            child: const Text('open')),
                        TextButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentMaterialBanner();
                            },
                            child: const Text('close'))
                      ]);

                  ScaffoldMessenger.of(context)
                      .showMaterialBanner(materialBanner);
                },
                child: const Text('Show Material Banner'))
          ],
        ),
      ),
    );
  }
}
