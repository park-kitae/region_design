import 'dart:math';

import 'package:flutter/material.dart';

class CongressmanItem extends StatelessWidget{
  final String name;
  final String image;
  final String polyName;
  final String location;
  final String cmitName;

  const CongressmanItem({Key key, this.name, this.image, this.polyName, this.location, this.cmitName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _build(name, image, polyName, location, cmitName);
  }

}

Widget _build(String name, String image, String polyName, String location, String cmitName){
  return Container(
    padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
    child: InkWell(
      onTap: () {
        /*Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CookieDetail(
                  assetPath: imgPath,
                  cookiename: name,
                  cookieprice: price
              ))
          );*/
      },
      child: Container(
       /* decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3.0,
                  blurRadius: 5.0
              )
            ],
            color: Colors.white
        ),*/
        color: Colors.white,
        child: Row(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Hero(
                tag: image + Random(100).toString(),
                child: Container(
                  height: 130,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.fitWidth),
                      /*borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(15.0)
                      )*/
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 120,
                padding: EdgeInsets.only(left: 10.0, top: 2.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        alignment: Alignment.center,
                        width: 100,
                        margin: EdgeInsets.only(right: 10.0),
                        padding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12,
                        ),
                        child: Text(
                            cmitName,
                            style: TextStyle(color: Colors.white, fontSize: 12.0)
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        name,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        polyName,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 15.0),
                      child: Text(
                        location,
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}