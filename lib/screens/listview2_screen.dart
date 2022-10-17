import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['megaman', 'mario', 'sonic', 'pokemon'];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView tipo 2"),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(options[i]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {
            final game = options[i];
            print(game);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
