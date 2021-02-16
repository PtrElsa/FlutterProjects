import 'package:flutter/material.dart';
import 'package:my_dzikir/dzikir/content_dzikir.dart';
import 'package:my_dzikir/model/dzikir.dart';
import 'package:my_dzikir/utils/custom_widget.dart';

class ListDzikir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 18.0, right: 18.0,bottom: 12.0,top: 6.0),
                  child: Text('Kumpulan Doa', style: styleTitle)
              ),
            ],
          ),
          Container(
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: dataListDzikir.map((list){
                return Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 18.0, right: 18.0,bottom: 8.0),
                  decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white))),
                  child: RaisedButton(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    color: Colors.white,
                    onPressed: (){},
                    child: ListTile(
                      title: Text(list.title, style: listDoa),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.orange))),
            child: RaisedButton(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              color: Colors.orange,
              onPressed: (){
                Navigator.push(context, PageRouteBuilder(
                    transitionDuration: Duration(milliseconds: 30),
                    transitionsBuilder: (context, animation, animationTime, child){
                      animation = CurvedAnimation(parent: animation, curve: Curves.elasticOut);
                      return ScaleTransition(
                          scale: animation,
                          alignment: Alignment.center,
                          child: child);
                    },
                    pageBuilder: (context, animation, animationTime){
                      return ContentDzikir();
                    }
                ));
              },
              child: Container(
                child: ListTile(
                  title: Center(
                    child: Text('Lihat Semua',
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
