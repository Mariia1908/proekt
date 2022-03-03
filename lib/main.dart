import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.tealAccent,
              title: const Text(
                "Классы",
                style: TextStyle(fontSize: 42, color: Colors.redAccent),
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
          shape: RoundedRectangleBorder(
              side: BorderSide( color: Colors.green, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Text(
            item.message,
            style: TextStyle(fontSize: 45, color: Colors.green),
            textAlign: TextAlign.center,
          ),
        );
      } else if (item is ColorItem) {
        return SizedBox(width: 20,
            height: 60, child:
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide( color: Colors.blue, width: 4),
                borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: Text(
                item.color,
                style: TextStyle(color: Colors.cyan, fontSize: 50),
                textAlign: TextAlign.center,
              ),
              color: Colors.teal,
            ));
        } else
            if (item is HeadItem)
        {
          return Card(
            shape: RoundedRectangleBorder(
                side: BorderSide( color: Colors.green, width: 4),
                borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Text(
              item.title,
              style: TextStyle(fontSize: 70, color: Colors.redAccent),
              textAlign: TextAlign.center,
            ),
            color: Colors.greenAccent,
          );
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

class ColorItem extends ListItem {
  String color;

  ColorItem(this.color);
}

class MessageItem extends ListItem {
  String message;

  MessageItem(this.message);
}
