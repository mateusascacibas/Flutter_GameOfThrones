import 'package:aula01/utils/Functions.dart';
import 'package:flutter/material.dart';

class Person {
  late String name;
  late String picture;

  Person(this.name, this.picture);
}

class PageListView extends StatefulWidget {
  @override
  State<PageListView> createState() => _PageListViewState();
}

class _PageListViewState extends State<PageListView> {
  bool _gridView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              setState(() {
                _gridView = false;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.grid_on),
            onPressed: () {
              setState(() {
                _gridView = true;
              });
            },
          ),
        ],
      ),
      body: _body(),
    );
  }

  _body() {
    List<Person> persons = [
      Person("GOT", "assets/images/image1.jpg"),
      Person("Dragon", "assets/images/image6.jpg"),
      Person("Queen", "assets/images/image7.jpeg"),
      Person("King", "assets/images/image8.jpg"),
      Person("Love", "assets/images/image4.jpg"),
      Person("War", "assets/images/image9.jpg"),
      Person("Winter", "assets/images/image10.jpg"),
      Person("GOT", "assets/images/image11.png")
    ];
    if (_gridView) {
      return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: persons.length,
        itemBuilder: (context, index) {
          return _itemView(persons, index);
        },
      );
    } else {
      return ListView.builder(
        itemExtent: 350,
        itemCount: persons.length,
        itemBuilder: (context, index) {
          return _itemView(persons, index);
        },
      );
    }
  }

  Stack _itemView(List<Person> persons, int index) {
    Person person = persons[index];
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        imgList(person.picture),
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(

            child: DecoratedBox(
              decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(15),
            ),
            ),
          ),
        ),
      ],
    );
  }
}
