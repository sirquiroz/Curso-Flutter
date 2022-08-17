import 'package:flutter/material.dart';

class LongList extends StatelessWidget {
  final List<String> items =
      List<String>.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas en Flutter'),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.black12,
              child: Icon(Icons.mobile_friendly, color: Colors.white),
            ),
            title: Text('${items[index]}'),
            subtitle: Text('subtitulo: ${items[index]}'),
            //trailing: Icon(Icons.arrow_forward_ios, size: 16),
            trailing: const Icon(Icons.add_a_photo, size: 16),
          );
        },
      ),
    );
  }
}
