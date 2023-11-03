import 'package:flutter/material.dart';
import 'package:flutter_gestore_estado_provider_1/pages/page1.dart';
import 'package:flutter_gestore_estado_provider_1/pages/page2.dart';
import 'package:flutter_gestore_estado_provider_1/pages/page3.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    super.key,
  });
  final List<Widget> _page = <Widget>[
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Page 1"),
        BottomNavigationBarItem(icon: Icon(Icons.business), label: "Page 2"),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: "page 3"),
      ]),
    );
  }
}
