import 'package:aula01/utils/Functions.dart';
import 'package:aula01/widgets/blackButton.dart';
import 'package:flutter/material.dart';

class PageTyrion extends StatelessWidget {
  const PageTyrion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Tyrion") ,
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
                child: Text("Tyrion Lannister",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold))),

            img("assets/images/tyrion.png"),
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
