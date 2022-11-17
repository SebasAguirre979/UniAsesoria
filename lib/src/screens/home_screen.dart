// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:uniasesoria/models/card.dart';
// import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  // ignore: unused_field
  final String _username;
  const HomeScreen(this._username, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text("Inicio")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    //Bienvenido ---------------------------------------------------------------------------------------------------
                    width: 210,
                    height: 44,
                    padding: const EdgeInsets.only(top: 4.5),
                    margin:
                        const EdgeInsets.only(top: 13, bottom: 20, right: 15),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(89, 170, 51, 1),
                        borderRadius: BorderRadius.circular(25)),
                    child: const Text(
                      "¡Bienvenido!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                  // Relleno -----------------------------------------------------------------------------------------------------
                  width: 110,
                  height: 44,
                  margin: const EdgeInsets.only(left: 0, top: 13, bottom: 20),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(89, 170, 51, 1),
                      borderRadius: BorderRadius.circular(25)),
                )
              ],
            ),
            Container(
              // Contenedor categorias ------------------------------------------------------------------------------------------
              width: 340,
              height: 560,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    height: 75,
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 15, left: 15, right: 15),
                    child: Form(
                        child: TextFormField(
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                      decoration: const InputDecoration(
                          hintText: "Categoria...",
                          hintStyle: TextStyle(fontSize: 20),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.only(top: 5, left: 15)),
                    )),
                  ),
                  SizedBox(
                    width: 310,
                    height: 470,
                    // Cards ---------------------------------------------------------------------------------------------------------
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Column(
                            children: List.generate(
                                demo_card.length,
                                (index) => TheCards(
                                      imagen: demo_card[index].imagen,
                                      nombre: demo_card[index].nombre,
                                      categoria: demo_card[index].categoria,
                                      press: () {},
                                    )),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
    );
  }
}

class TheCards extends StatelessWidget {
  const TheCards({
    Key? key,
    required this.imagen,
    required this.nombre,
    required this.categoria,
    required this.press,
  }) : super(key: key);

  final String imagen, nombre, categoria;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          width: 320,
          height: 65,
          margin: const EdgeInsets.symmetric(vertical: 6.5),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(177, 210, 221, 1),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Image(image: AssetImage(imagen)),
              Column(
                children: [
                  Container(
                    width: 200,
                    // height: 15,
                    margin: const EdgeInsets.only(
                      bottom: 20,
                      left: 10,
                    ),
                    child: Text(
                      nombre,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      width: 200,
                      margin: const EdgeInsets.only(left: 10),
                      child: Text(
                        categoria,
                        style: const TextStyle(
                            color: Color.fromRGBO(79, 141, 1, 1)),
                      )),
                ],
              )
            ],
          )),
    );
  }
}
