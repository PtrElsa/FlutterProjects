import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'dummy.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata Yogyakarta"),

      ),
      body:
      ListView(children: tourismList.map((place) {
        return FlatButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailScreen(tourisms: place);
            }));
          },
          child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    flex : 1,
                    child : Image.asset(
                        place.photo
                     ),
                ),
                Expanded(
                  flex : 2,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(place.name, style: TextStyle(fontSize:  16.0,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(place.address, maxLines: 2)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }).toList()
      ),
    );
  }
}
