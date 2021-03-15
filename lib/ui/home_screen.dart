import 'dart:io';
import 'package:executable_test_flutter/params.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {


  final TextEditingController textController = TextEditingController(text: params);



  @override
  Widget build(BuildContext context) {
    textController.text = params;
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.blue[800],
        ),
        Center(
            child: Container(
              height: 400,
              width: 500,
              child: Card(
                elevation: 5,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 20),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/logo_precisa.jpg"),
                                fit: BoxFit.contain)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: textController,
                        decoration: InputDecoration(
                          hintText: "Text",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 45,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                        return Colors.green[
                                        800]; // Use the component's default.
                                      },
                                    ),
                                  ),
                                  onPressed: () {
                                    params = textController.text;
                                    stdout.write(params);
                                    exit(0);
                                    SystemNavigator.pop(animated: true);
                                  },
                                  child: Text(
                                    "Enviar",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: SizedBox(
                              height: 45,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                        return Colors.red[
                                        800]; // Use the component's default.
                                      },
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Cancelar",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ))
      ]),
    );
  }
}