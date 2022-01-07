import 'package:aula01/pages/page_arya.dart';
import 'package:aula01/pages/page_daenerys.dart';
import 'package:aula01/pages/page_jon.dart';
import 'package:aula01/pages/page_king.dart';
import 'package:aula01/pages/page_list_view.dart';
import 'package:aula01/pages/page_sansa.dart';
import 'package:aula01/pages/page_tyrion.dart';
import 'package:aula01/utils/Functions.dart';
import 'package:aula01/utils/nav.dart';
import 'package:aula01/widgets/blackButton.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'drawer_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
    child: Scaffold(
      appBar: AppBar(
        title: Text("Game Of Thrones - Mateus Ascacibas"),
        bottom: TabBar(tabs: [
          Tab(text: "Principal",),
          Tab(text: "History",),
        ],),

      ),
      body: TabBarView(children: [
        _body(context),
        _tab2(),
      ],),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // FloatingActionButton(
          //   heroTag: "btn1",
          //   child: Icon(Icons.add),
          //   onPressed: () {
          //     _onClickFab();
          //   },
          // ),
          // SizedBox(
          //   width: 8,
          // ),
          FloatingActionButton(
            child: Icon(Icons.favorite),
            heroTag: "btn2",
            onPressed: () {
              _onClickLove();
            },
          ),
        ],
      ),
      drawer: DrawerList(),
    ),
    );
  }

  _body(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      padding: EdgeInsets.only(top: 16),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _text(),
          _pageView(),
          _buttons(),
        ],
      ),
    ));
  }

  Container _pageView() {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      height: 300,
      child: PageView(
        children: [
          //_img("assets/images/mat.jpeg"),
          img(
              "assets/images/image1.jpg"),
          img(
              "assets/images/image2.jpg"),
          img(
              "assets/images/image3.jpg"),
          img(
              "assets/images/image4.jpg"),
          img(
              "assets/images/image5.jpg")
        ],
      ),
    );
  }

  _buttons() {
    return Builder(builder: (context) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlackButton("Arya", () => _onClickNavigator(context, PageArya())),
              BlackButton(
                  "Daenerys", () => _onClickNavigator(context, PageDaenerys()))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlackButton(
                  "Jon Snow", () => _onClickNavigator(context, PageJon())),
              BlackButton(
                  "Night King", () => _onClickNavigator(context, PageKing()))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlackButton(
                  "Sansa", () => _onClickNavigator(context, PageSansa())),
              BlackButton(
                  "Tyrion", () => _onClickNavigator(context, PageTyrion()))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlackButton("List View",
                  () => _onClickNavigator(context, PageListView())),
              //BlackButton("Snack", () => _onClickSnack(context))
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     BlackButton("Dialog", () => _onClickDialog(context)),
          //     BlackButton("Toast", () => _onClickToast())
          //   ],
          // ),
        ],
      );
    });
  }

  void _onClickNavigator(BuildContext context, Widget page) async {
    await push(context, page);
  }

  _button(BuildContext context, String text, Function onPressed) {
    return BlackButton(text, onPressed);
  }


  _text() {
    return Text(
      "Bem vindo(a) ao game of thrones",
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }
  //
  // _onClickSnack(context2) {
  //   Scaffold.of(context2).showSnackBar(SnackBar(
  //     content: Text("Game Of Thrones"),
  //   ));
  // }
  //
  // _onClickDialog( context2) {
  //   showDialog(
  //       context: context2,
  //       builder: (context2) {
  //         return AlertDialog(
  //           title: Text("Um grande série!"),
  //         );
  //       });
  // }
  //
  // _onClickToast() {
  //   Fluttertoast.showToast(
  //       msg: "Assista, vale a pena!",
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.CENTER,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Colors.red,
  //       textColor: Colors.white,
  //       fontSize: 16.0);
  // }

  void _onClickFab() {
    Fluttertoast.showToast(
              msg: "Adicionado!",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 16.0);
  }

  void _onClickLove() {
    Fluttertoast.showToast(
        msg: "Favoritado!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  _tab2() {
    return Padding(
      padding: const EdgeInsets.only(top:180),
      child: Text(
        "Situada nos continentes fictícios de Westeros e Essos, a série centra-se no Trono de Ferro dos Sete Reinos e "
            "segue um enredo de alianças e conflitos entre as famílias nobres dinásticas"
            ", ""seja competindo para reivindicar o trono ou lutando por sua independência.",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black,
            fontSize: 20,

            fontWeight: FontWeight.bold,
            decorationStyle: TextDecorationStyle.wavy),
      ),
      );


  }
}
