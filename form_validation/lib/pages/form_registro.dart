import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormRegistro extends StatelessWidget {
  FormRegistro({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  final _txt1 = TextEditingController();
  final _txt2 = TextEditingController();
  final _txt3 = TextEditingController();
  final String titulo = "Mi pagina de registro";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                  labelText: "Ingrese nombre",
                  icon: Icon(Icons.person),
                  //border: InputBorder.none,
                  hintText: "Nombre"),
              controller: _txt1,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Por favor ingresa nombre";
                }
              },
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
              ],
              decoration: const InputDecoration(
                  labelText: "Ingrese edad",
                  icon: Icon(Icons.person),
                  //border: InputBorder.none,
                  hintText: "Edad"),
              controller: _txt2,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Por favor ingresa la edad";
                } else if (value.length > 2) {
                  return "Edad no valida";
                } else {
                  return null;
                }
              },
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(
                    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9@]+"))
              ],
              decoration: const InputDecoration(
                  labelText: "Ingrese correo electrónico",
                  icon: Icon(Icons.email),
                  //border: InputBorder.none,
                  hintText: "Email"),
              controller: _txt3,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Por favor ingresa el correo electrónico";
                } else if (!RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value)) {
                  return "correo electrónico NO VALIDO";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _txt1.clear();
                  _txt2.clear();
                  _txt3.clear();
                  _scaffoldkey.currentState!.showSnackBar(
                    const SnackBar(
                      duration: Duration(seconds: 2),
                      content: Text('Procesando'),
                    ),
                  );
                }
              },
              child: const Text("Enviar"),
            )
          ],
        ),
      ),
    );
  }
}
