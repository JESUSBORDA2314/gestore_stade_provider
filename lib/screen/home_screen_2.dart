import 'package:flutter/material.dart';
import 'package:flutter_gestore_estado_provider_1/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextProvider watch = context.watch<TextProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Flutter"),
      ),
      body: ListView(
        children: [
          Text(watch.text1),
          Text(watch.text2),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            onChanged: (value) {
              context.read<TextProvider>().setTexts1(
                    value1: value.toString(),
                  );
            },
          ),
          TextFormField(
            onChanged: (value) {
              context.read<TextProvider>().setTexts2(
                    value2: value.toString(),
                  );
            },
          ),
          ElevatedButton(
              onPressed: () {
                /*  context.read<TextProvider>().setTexts1(value1: "nuevo texto");
                context.read<TextProvider>().setTexts2(value2: 'value2'); */
              },
              child: Text('New text'))
        ],
      ),
    );
  }
}
