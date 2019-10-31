import 'package:flutter/material.dart';
// import 'package:transparent_image/transparent_image.dart';

void main() => runApp(new MyAppCachedNetworkImage());

class MyAppImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = 'Web Images';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Image.network(
          'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
        ),
      ),
    );
  }
}

// class MyAppFadeInImage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final title = 'Fade in images';

//     return new MaterialApp(
//       title: title,
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: new Text(title),
//         ),
//         body: new Stack(
//           children: <Widget>[
//             new Center(child: new CircularProgressIndicator()),
//             new Center(
//               child: new FadeInImage.memoryNetwork(
//                 placeholder: kTransparentImage,
//                 image:
//                     'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyAppCachedNetworkImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Cached Images';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Center(
          child: new CachedNetworkImage(
            placeholder: new CircularProgressIndicator(),
            imageUrl:
                'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
          ),
        ),
      ),
    );
  }
}