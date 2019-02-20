import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class NextView extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Details"),
      ),
      // body: makeBody,
        body: Center(child: buildExpandedImagesWithFlex()),

      // body: Center(
      //   child: RaisedButton(
      //     onPressed: () {
      //         Navigator.pop(context);

      //       // Navigate back to first route when tapped.
      //     },
      //     child: Text('Go back!'),
          
      //   ),
      // ),
    );
  }
}

Widget buildOverflowingRow() =>
      // #docregion overflowing-row
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //backgroundImage: NetworkImage("http://tineye.com/images/widgets/mona.jpg"),
          Image.network("http://tineye.com/images/widgets/mona.jpg"),
            Image.asset('/Users/treel/my_app/images/pic1.jpg'),
          Image.asset('/Users/treel/my_app/images/pic2.jpg'),
          Image.asset('/Users/treel/my_app/images/pic3.jpg'),
        ],
      );
  // #enddocregion overflowing-row

  Widget buildExpandedImages() =>
      // #docregion expanded-images
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Expanded(
            child:Image.network("http://tineye.com/images/widgets/mona.jpg"),
          ),
          Expanded(
            child: Image.asset('/Users/treel/my_app/images/pic1.jpg'),
          ),
          Expanded(
            child: Image.asset('/Users/treel/my_app/images/pic2.jpg'),
          ),
          Expanded(
            child: Image.asset('/Users/treel/my_app/images/pic3.jpg'),
          ),
        ],
      );
  // #enddocregion expanded-images

  Widget buildExpandedImagesWithFlex() =>
      // #docregion expanded-images-with-flex
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
             flex: 2,
            child:Image.network("http://tineye.com/images/widgets/mona.jpg"),
          ),
          Expanded(
            child: Image.asset('/Users/treel/my_app/images/pic1.jpg'),
          ),
          Expanded(
            child: Image.asset('/Users/treel/my_app/images/pic2.jpg'),
          ),
          Expanded(
            child: Image.asset('/Users/treel/my_app/images/pic3.jpg'),
          ),
        ],
      );
      
 final makeBody = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return makeCard;
        },
      ),
    );
  


final makeCard = Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile,
      ),
    );

  final makeListTile = ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          decoration: new BoxDecoration(
              border: new Border(
                  right: new BorderSide(width: 1.0, color: Colors.white24))),
          child: Icon(Icons.autorenew, color: Colors.white),
        ),
        title: Text(
          "Introduction to Driving",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

        subtitle: Row(
          children: <Widget>[
            Icon(Icons.linear_scale, color: Colors.yellowAccent),
            Text(" Intermediate", style: TextStyle(color: Colors.white))
          ],
        ),
        trailing:
            Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0)
    );

// class SecondScreen extends Statelesswidght{
// @override
// Weight build(BuildContext  context){
      
//       return Scaffold(
//         appBar: AppBar(title: Text('Second Screen'))
//         ),
//            body: Center(child: RaiseButton(onPressed:(){

//           },child:Text('Start New Screen'),),)
//         );
//     };

// }

/*
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
*/