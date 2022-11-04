import 'package:flutter/material.dart';

import '../widgets/customized_button.dart';
import '../widgets/customized_textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFF2FA031), width: 1),
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Colors.green.shade100,
                            Colors.white,
                          ],
                        ),
                      ),
                      child: IconButton(
                          color: const Color(0xFF2FA031),
                          icon: const Icon(Icons.arrow_back_ios_sharp),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    )),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                      "Ingresa tus datos \npara realizar tu registro en la APP.",
                      style: TextStyle(
                        color: Color(0xFF2FA031),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                CustomizedTextfield(
                  myController: _nameController,
                  hintText: "Nombre",
                  isPassword: false,
                ),
                CustomizedTextfield(
                  myController: _usernameController,
                  hintText: "Usuario",
                  isPassword: false,
                ),
                CustomizedTextfield(
                  myController: _emailController,
                  hintText: "Email",
                  isPassword: false,
                ),
                CustomizedTextfield(
                  myController: _passwordController,
                  hintText: "Contraseña",
                  isPassword: true,
                ),
                CustomizedTextfield(
                  myController: _confirmpasswordController,
                  hintText: "Confirme su contraseña",
                  isPassword: true,
                ),
                CustomizedButton(
                    buttonText: "Registrarse",
                    buttonColor: const Color(0xFF2FA031),
                    textColor: Colors.white,
                    onPressed: () {
                      if (_nameController.text != '' &&
                          _usernameController.text != '' &&
                          _emailController.text != '' &&
                          _passwordController.text != '' &&
                          _confirmpasswordController.text != '') {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Bienvenido!'),
                            content:
                                const Text('Usuario correctamente registrado.'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Alerta'),
                            content: const Text(
                                'Ingresa los datos correspondientes.'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    }),
              ]))),
    )));
  }
}
