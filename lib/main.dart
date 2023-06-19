import 'package:flutter/material.dart';
import 'package:flutter_provider_2/cart_provider.dart';
import 'package:flutter_provider_2/catched_network_image.dart';

import 'package:provider/provider.dart';
import 'package:flutter_provider_2/date_time_provider.dart';

void main() {
  //...single provider.....
  // runApp(ChangeNotifierProvider(
  //   create: (context) => CartProvider(), child: const MyApp()));
  //....multiprovider....
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<CartProvider>(create: (context) => CartProvider()),
    ChangeNotifierProvider<DateTimeProvider>(
        create: (context) => DateTimeProvider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
            trackVisibility: MaterialStateProperty.all(false),
            thickness: MaterialStateProperty.all(10),
            thumbColor: MaterialStateProperty.all(Colors.blueAccent)),
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      home: const CatchedImageScreen(),
    );
  }
}
