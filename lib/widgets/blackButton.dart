import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {

  late String text;
  late Function onPressed;

  BlackButton(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        color: Colors.black,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () => onPressed()
    );
  }
}
