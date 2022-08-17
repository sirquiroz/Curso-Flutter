import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class formValidate extends StatelessWidget {
  formValidate({Key? key, required this.title}) : super(key: key);
  final String title;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _txt1 = TextEditingController();
  final _txt2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Mi formulario'),
      ),
      body: Form(
        //nombre Texto, apellido Texto, edad Numerico(>0 and <99)
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  //border: InputBorder.none,
                  //hintText: 'Ingrese su nombre...',
                  labelText: 'Ingrese un texto'),
              controller: _txt1,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor ingrese el texto';
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
              decoration: const InputDecoration(
                  labelText: 'Ingrese su telefono',
                  //hintText: "whatever you want",
                  icon: Icon(Icons.phone_iphone)),
              /*decoration: const InputDecoration(
                  //border: InputBorder.none,
                  //hintText: 'Ingrese su nombre...',
                  labelText: 'Ingrese otro texto'),*/
              controller: _txt2,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor ingrese el 2do texto';
                } else {
                  return null;
                }
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _txt1.clear();
                  _scaffoldKey.currentState!.showSnackBar(
                      const SnackBar(content: Text('Procesando info')));
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
