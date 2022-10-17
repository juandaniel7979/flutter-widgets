import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const ['megaman', 'mario', 'sonic', 'pokemon'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView tipo 1"),
      ),
      body: ListView(
        children: [
          
          ...options.map((game) => ListTile(
            leading: const Icon(Icons.access_time_sharp),
            title: Text(game),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
          )).toList()
          
        ],
      ),
    );
  }
}
