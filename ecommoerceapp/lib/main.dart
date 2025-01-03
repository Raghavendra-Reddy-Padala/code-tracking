
import 'package:ecommoerceapp/models/shop.dart';
import 'package:ecommoerceapp/pages/aboutpage.dart';
import 'package:ecommoerceapp/pages/cartpage.dart';
import 'package:ecommoerceapp/pages/intropage.dart';
import 'package:ecommoerceapp/pages/settingspage.dart';
import 'package:ecommoerceapp/pages/shoppage.dart';
import 'package:ecommoerceapp/themes/lightmode.dart';
import 'package:ecommoerceapp/themes/themesprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
        MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Shop()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const Intropage(),
          theme: lightmode,
          darkTheme: darkmode, // Provide the dark theme
          themeMode: themeProvider.themeMode, // Use theme mode from ThemeProvider
          routes: {
            '/intropage': (context) => const Intropage(),
            '/shoppage': (context) => const Shoppage(),
            '/cartpage': (context) => const Cartpage(),
            '/settingpage': (context) => const Settingspage(),
            '/aboutpage': (context) => const Aboutpage(),
          },
        );
      },
    );
  }
}