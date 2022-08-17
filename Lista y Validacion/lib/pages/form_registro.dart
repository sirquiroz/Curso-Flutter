import 'package:flutter/material.dart';
import 'package:lista_validacion/models/contact.dart';

import '../main.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyFormRegistroPageState();
}

class _MyFormRegistroPageState extends State<MyHomePage> {
  Contact _contact = Contact(id: 0, name: "", mobile: "");
  List<Contact> _contacts = [];
  final _ctrlName = TextEditingController();
  final _ctrlMobile = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  _onSubmit() async {
    var form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      // ignore: avoid_print
      print('''
            Full Name : ${_contact.name}
            Mobile : ${_contact.mobile}
    ''');
      _contacts
          .add(Contact(id: -1, name: _contact.name, mobile: _contact.mobile));
      form.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(color: darkBlueColor),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[_form(), _list()],
        ),
      ),
    );
  }

  // _form() => Text('form goes here');

  //_list() => const Text('list of contacts goes here');
  //other state properties
  _list() => Expanded(
        child: Card(
          margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
          child: Scrollbar(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        color: darkBlueColor,
                        size: 40.0,
                      ),
                      title: Text(
                        _contacts[index].name.toUpperCase(),
                        style: TextStyle(
                            color: darkBlueColor, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(_contacts[index].mobile),
                      onTap: () {},
                    ),
                    Divider(
                      height: 5.0,
                    ),
                  ],
                );
              },
              itemCount: _contacts.length,
            ),
          ),
        ),
      );
  _form() => Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _ctrlName,
                decoration: const InputDecoration(labelText: 'Full Name'),
                validator: (val) =>
                    (val!.isEmpty ? 'This field is mandatory' : null),
                onSaved: (val) => setState(() => _contact.name = val!),
              ),
              TextFormField(
                controller: _ctrlMobile,
                decoration: const InputDecoration(labelText: 'Mobile'),
                validator: (val) =>
                    val!.length < 10 ? '10 characters required' : null,
                onSaved: (val) => setState(() => _contact.mobile = val!),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () => _onSubmit(),
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      );
}
