import 'package:flutter/material.dart';
import 'package:jogja_tourism/tourism.dart';

import 'share.dart';

class DetailScreen extends StatelessWidget {
  final Tourism tourisms;

  const DetailScreen({@required this.tourisms});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            Stack(
              children: <Widget>[
                Image.asset(tourisms.photo),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:<Widget> [
                      IconButton(icon: Icon(Icons.arrow_back,color: Colors.white),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                      ShareButton()
                    ],
                  ),
                ),
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                tourisms.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  Column(
                    children:<Widget>[
                      Icon(Icons.calendar_today,color: Colors.white),
                      SizedBox(height: 8.0),
                      Text(
                          tourisms.scedule,
                        style: TextStyle(
                            color: Colors.white
                      ),
                      ),
                    ],
                  ),
                  Column(
                    children:<Widget> [
                      Icon(Icons.monetization_on,color: Colors.white),
                      SizedBox(height: 8.0),
                      Text(
                          tourisms.ticket,
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SingleChildScrollView(
                padding: EdgeInsets.all(16.0),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:<Widget> [
                    Icon(Icons.location_on_outlined,color: Colors.white),
                    Text(
                      tourisms.address,textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ],
                )
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                tourisms.description,textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16.0,color: Colors.white),
              ),
            ),
            Container(
              height: 160,
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:tourisms.imgurl.map((url){
                    return Padding(
                      padding: EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(url),
                      ),
                    );
                  }).toList()
              ),
            )
          ],
        ),
      ),
    );
  }
}
