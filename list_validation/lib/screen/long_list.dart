import 'package:flutter/material.dart';

//https://blog.logrocket.com/creating-listviews-in-flutter/
//https://material.io/components/cards#behavior
class LongList extends StatelessWidget {
  final List<String> items =
      List<String>.generate(12, (index) => 'name $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listas en Flutter'),
      ),
      //body: ListView.builder(
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        physics: const BouncingScrollPhysics(),
        itemCount: items.length,
        padding: const EdgeInsets.all(8),
        itemBuilder: (context, index) {
          return ListTile(
            /*leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/react.png"),
              child: Text('BA'),
              backgroundColor: Colors.black26,
              //child: Icon(Icons.people, color: Colors.white),
            ),    */
            leading: const CircleAvatar(
                backgroundColor: Colors.black26,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
            title: Text('Nombre: ${items[index]}'),
            subtitle: Text('Edad: ${items[index]}'),
            //trailing: Icon(Icons.arrow_forward_ios, size: 16),
            trailing:
                const Icon(Icons.check_box, size: 24, color: Colors.green),
          );
        },
      ),
    );
  }
}
