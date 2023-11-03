import 'package:flutter/material.dart';
import 'package:flutter_gestore_estado_provider_1/screen/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      title: 'Material App',
      home:  HomeScreen(),
    );
  }
}
