import 'package:flutter/material.dart';
import 'package:flutter_gestore_estado_provider_1/provider.dart';
import 'package:flutter_gestore_estado_provider_1/screen/home_screen.dart';
import 'package:flutter_gestore_estado_provider_1/screen/home_screen_2.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<TextProvider>(create: (_) => TextProvider())
        ],
        builder: (context, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primarySwatch: Colors.purple),
            title: 'Material App',
            home: HomePage(),
          );
        });
  }
}
