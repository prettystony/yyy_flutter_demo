import 'package:flutter/material.dart';
import 'gesture_demo.dart';
import 'ink_well_demo.dart';
import 'dismissing_items_demo.dart';

// void main() => runApp(new InkWellDemo());

void main() {
  runApp(new DismissingItemsDemo(
    items: new List<String>.generate(20, (i) => "Item ${i}"),
  ));
}


class GestureDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final title = 'Gesture Demo';

    return new MaterialApp(
      home: new GestureDemoHomePage(title: title),
    );
  }
}

class InkWellDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'InkWell Demo';

    return new MaterialApp(
      title: title,
      home: new InkWellDemoHomePage(title: title),
    );
  }
}
