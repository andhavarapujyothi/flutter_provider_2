import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CatchedImageScreen extends StatelessWidget {
  const CatchedImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catched network image'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: CachedNetworkImage(
              imageUrl:
                  'https://cdn.pixabay.com/photo/2023/04/29/12/44/large-marble-7958534_960_720.jpg',
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ],
      ),
    );
  }
}
