import 'package:flutter/material.dart';

import '../widgets/customized_button.dart';
import '../widgets/customized_textfield.dart';
// import 'register_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController _emailforgotController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
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
                            "Olvidaste tu contraseña? \nRecupere su clave ingresando su correo electronico.",
                            style: TextStyle(
                              color: Color(0xFF2FA031),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      CustomizedTextfield(
                        myController: _emailforgotController,
                        hintText: "Email",
                        isPassword: false,
                      ),
                      CustomizedButton(
                          buttonText: "Enviar",
                          buttonColor: const Color(0xFF2FA031),
                          textColor: Colors.white,
                          onPressed: () {
                            if (_emailforgotController.text != '') {
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Correo enviado'),
                                  content: const Text(
                                      'Revisa tu bandeja de entrada para restablecer tu contraseña.'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Cancel'),
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'OK'),
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
                                      onPressed: () =>
                                          Navigator.pop(context, 'OK'),
                                      child: const Text('OK'),
                                    ),
                                  ],
                                ),
                              );
                            }
                          }),
                    ])))));
  }
}
