import 'package:aula01/widgets/blackButton.dart';
import 'package:flutter/material.dart';
import 'package:aula01/utils/Functions.dart';

class PageArya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Arya"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Container(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Center(
        child: Text("Arya Stark",
        style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold))),

    img("assets/images/arya.jpg"),
    BlackButton(
    "Voltar",
    () => onClickVoltar(context)
    ),
    ],
    ));
  }

  onClickVoltar(context) {
    Navigator.pop(context);
  }


}
