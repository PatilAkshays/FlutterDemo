import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  ScrollController _scrollController = new ScrollController();
  List<bool> _data = new List<bool>();



// @override
void initState(){
  // setState((){
      for (int i=0; i< 10;i++ ){
        _data.add(false);
      }
    // });
  }
  void onChange(bool value, int index){
    // setState((){
        _data[index] = value;
    // });
  }  
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        
        // appBar: AppBar(
        //   title: Text("Second Route"),
        // ),
       body: _homeBody()
      );
    }
  
    // void setState(Null Function() param0) {}
  
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

