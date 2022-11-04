import 'package:flutter/material.dart';
import 'package:uniasesoria/src/screens/register_screen.dart';
import 'package:uniasesoria/src/widgets/customized_textfield.dart';
import '../widgets/customized_button.dart';
import 'forgot_password.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.green.shade100,
                              Colors.white,
                            ],
                          ),
                        ),
                        child: Image.asset(
                          "assets/images/logoverdesinfondo.png",
                          height: 200,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                            "Bienvenido(a)!! \nLos mejores docentes a tu disposición.",
                            style: TextStyle(
                              color: Color(0xFF2FA031),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      CustomizedTextfield(
                        myController: _usernameController,
                        hintText: "Ingrese su usuario",
                        isPassword: false,
                      ),
                      CustomizedTextfield(
                        myController: _passwordController,
                        hintText: "Ingrese su contraseña",
                        isPassword: true,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgotPassword()));
                            },
                            child: const Text("Olvido su contraseña?",
                                style: TextStyle(
                                  color: Color(0xFF2FA031),
                                  fontSize: 15,
                                )),
                          ),
                        ),
                      ),
                      CustomizedButton(
                          buttonText: "Ingresar",
                          buttonColor: const Color(0xFF2FA031),
                          textColor: Colors.white,
                          onPressed: () {
                            if (_usernameController.text == 'admin' &&
                                _passwordController.text == 'admin') {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen(
                                          _usernameController.text)));
                            }
                            if (_usernameController.text == '' &&
                                _passwordController.text == '') {
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
                      CustomizedButton(
                          buttonText: "Registrarse",
                          buttonColor: const Color(0xFF2FA031),
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const RegisterScreen()));
                          }),
                    ])))));
  }
}
