


import 'package:my_app/Screens/businessTab.dart';
import 'package:my_app/Screens/schoolTab.dart';
import 'package:my_app/Screens/homeTab.dart';
import 'package:my_app/Screens/nextView.dart';

import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //  home: tabHome
      home: MyHomePage(title: 'Flutter Demo'),
    );
  }
}

//Not in use
final tabHome = DefaultTabController(
        length: 3,
        child: Scaffold(
          
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
              
            ),
            // title: Text('Tabs Demo'),
          ),
          
          body: TabBarView(
            children: [
              SchoolRoute(),
              Icon(Icons.directions_transit),
              NextView(),
            ],
          ),
        ),
      );
   



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

///* 
class _MyHomePageState extends State<MyHomePage> {


int _selectedIndex = 1;


 final _widgetOptions = [
   HomeTab(),
   BusinessRoute(),
      tabHome,
 ];


void onPressed() {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => NextView()),
  );
}
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  
    //   _data.add(false);
    // _scrollController.animateTo(_scrollController.position.maxScrollExtent, duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
  }

 
void _onItemTapped(int index) {
   setState(() {
     _selectedIndex = index;
   });
 }
 
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
        IconButton(
          icon: Icon(Icons.open_in_new),
          onPressed: onPressed,
        )
      ],
      ),
      bottomNavigationBar: BottomNavigationBar(
       items: <BottomNavigationBarItem>[
         BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
         BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
         BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
       ],
       currentIndex: _selectedIndex,
       fixedColor: Colors.deepPurple,
       onTap: _onItemTapped,
     ),
   
      // bottomNavigationBar: makeBottom,
      // body: new ListView.builder(
      //   itemCount: _data.length,
      //    scrollDirection: Axis.vertical,
      //   // shrinkWrap: true,
      //   controller: _scrollController,
      //   itemBuilder: (BuildContext context, int index){
      //     return new Card(
      //       child: new Container(
      //         padding : new EdgeInsets.all(5.0),
      //         child: new Column(
      //           children : <Widget>[
      //             new Text(('This is item : ${index}')),
      //             new CheckboxListTile(
      //               value:_data[index],
      //               controlAffinity: ListTileControlAffinity.leading,
      //               title: new Text('Click Me Item : ${index}'),
      //               onChanged: (bool value){onChange(value, index);
      //               }
      //               )
      //           ]
      //         ) ,
      //       ),
      //     );
      //    },
      //    ),

      
      body: Center(
       child: _widgetOptions.elementAt(_selectedIndex),
     ),
      
drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              // decoration: BoxDecoration(color: Colors.white),
              currentAccountPicture: new CircleAvatar(
                radius: 50.0,
                backgroundColor: const Color(0xFF778899),
                backgroundImage:
                    NetworkImage("http://tineye.com/images/widgets/mona.jpg"),
              ),
                accountName: new Text(
                  "AkshAy Patil",
                  style: new TextStyle(
                      fontSize: 22.0, fontWeight: FontWeight.w500),
                ),
                accountEmail: new Text(
                  "Akshay.patil@logicaresys.com",
                  style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500,color: Colors.amberAccent),
                )),
                ListTile(
                  
           leading: new Icon(Icons.home),
           title: new Text("Home",
           style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
          
                        onTap: () {

                Navigator.pop(context);
                // onPressed();

              },
            ),
            ListTile(
              leading: new Icon(Icons.golf_course),
              title: Text("Goals",
               style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
              
              onTap: () {

                Navigator.pop(context);
                onPressed();

              },
            ),ListTile(
              leading: new Icon(Icons.people),
              title: Text("People",
              style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
              onTap: () {

                Navigator.pop(context);
                onPressed();

              },
            ),
            ListTile(
              leading: new Icon(Icons.settings),
              title: Text("Setting",
               style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
              
              onTap: () {

                Navigator.pop(context);
                onPressed();

              },
            ),ListTile(
              leading: new Icon(Icons.contacts),
              title: Text("Contact Us",
              style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
              onTap: () {

                Navigator.pop(context);
                onPressed();

              },
            ),
            // new Column(children: drawerOptions)
          ],
        ),
      ),
    
      floatingActionButton: FloatingActionButton(
        onPressed: onPressed, //_incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  Widget _homeBody() {
  return Container(
        child: ListView.builder(
        itemCount: 10,
         scrollDirection: Axis.vertical,
        // shrinkWrap: true,
        itemBuilder: (BuildContext context, int index){
          return new Card(
            child: new Container(
              padding : new EdgeInsets.all(5.0),
              child: new Column(
                children : <Widget>[
                  new Text(('This is item : $index')),
                  new CheckboxListTile(
                    value:false,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: new Text('Click Me Item : $index'),
                    onChanged: null
                    //onChanged: (bool value){onChange(value, index);
                    
                    )
                ]
              ) ,
            ),
          );
         },
         ),
    );
}
}
//*/


    final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.blur_on, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.hotel, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_box, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
    );


 
   
 /*  
Widget _homeBody() {
  return Container(
        child: ListView.builder(
        itemCount: 10,
         scrollDirection: Axis.vertical,
        // shrinkWrap: true,
        itemBuilder: (BuildContext context, int index){
          return new Card(
            child: new Container(
              padding : new EdgeInsets.all(5.0),
              child: new Column(
                children : <Widget>[
                  new Text(('This is item : ${index}')),
                  new CheckboxListTile(
                    value:false,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: new Text('Click Me Item : ${index}'),
                    onChanged: null
                    //onChanged: (bool value){onChange(value, index);
                    
                    )
                ]
              ) ,
            ),
          );
         },
         ),
    );
}
*/


