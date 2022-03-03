import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Классы",
                style: TextStyle(fontSize: 32),
                textAlign: TextAlign.center,
              ),
            ),
            body: MyBody()));
  }
}

class MyBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  int value = 0;
  double fontSize = 22;

  @override
  Widget build(BuildContext context) {
    List<ListItem> items = [];
    for (int i = 0; i < 1000; i++) {
      ListItem item;
      if (i % 10 == 0) {
        item = HeadItem('$i');
      } else if (i % 5 == 0) {
        item = ColorItem('$i');
      } else {
        item = MessageItem('$i');
      }
      items.add(item);
    }
    return ListView.builder(itemBuilder: (context, index) {
      var item = items[index];
      if (item is MessageItem) {
        return Card(
          child: Text(
            item.message,
            style: TextStyle(fontSize: 25),
          ),
        );
      } else if (item is ColorItem){
        return Card(
          child: Text(
            item.color,
            style: TextStyle(color: Colors.red, fontSize: 48),
            textAlign: TextAlign.center,
          ),
          color: Colors.blueGrey,
        );
    } else {
        (item is HeadItem) async {
          return Container(
          child: Text(
            item.title,
            style: TextStyle(fontSize: 56),
            textAlign: TextAlign.center,
          ),
          color: Colors.blue,
        );
        };
      }
      return SizedBox();
    });
  }
}
class ListItem {}

class HeadItem extends ListItem {
  String title;

  HeadItem(this.title);
}
  class ColorItem extends ListItem{
  String color;
  ColorItem(this.color);
  }
class MessageItem extends ListItem {
  String message;

  MessageItem(this.message);
}


