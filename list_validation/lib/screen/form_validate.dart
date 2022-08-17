import 'package:flutter/material.dart';

class FormValidate extends StatelessWidget {
  FormValidate({Key? key, required this.title}) : super(key: key);
  final String title;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Mi formulario'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  //border: InputBorder.none,
                  hintText: 'Ingrese su nombre...',
                  labelText: 'Ingrese un texto'),
              controller: _ctrl,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor ingrese el texto';
                } else {
                  return null;
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _ctrl.clear();
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Procesando info.')));
                  /*_scaffoldKey.currentState.!.showSnackBar(
                      const SnackBar(content: Text('Procesando info')));*/
                }
              },
              child: const Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
