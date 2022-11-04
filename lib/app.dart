import 'package:flutter/material.dart';
import 'package:pokedex/splash_screen.dart';
import 'package:pokedex/utils/utils.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bayzat Assessment',
      debugShowCheckedModeBanner: false,
      theme: pokedexTheme,
      home: Builder(
        builder: (context) {
          final media = MediaQuery.of(context);
          Dims.setSize(media);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1,
            ),
            child: const SplashScreen(),
          );
        },
      ),
    );
  }
}
