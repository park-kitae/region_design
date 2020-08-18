import 'package:flutter/material.dart';
import 'package:region_design/article/CongressmanItem.dart';

class SearchListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Container(
        child: Column(
          children: [
            search(),
            list()
          ],
        ),
      )
    );
  }

  Widget search(){
    return Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
      padding: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30)
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: '국회의원 이름 검색',
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 0
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 0
            )
          )
        ),
      ),
    );
  }

  Widget list(){
    return Expanded(
      child: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          CongressmanItem(
            name: '강훈식(姜勳植)',
            image: 'assets/congressman.jpg',
            cmitName: '더불어민주당',
            location: '충남 아산시을',
            polyName: '교육위원회',
          ),
        ],
      ),
    );
  }
}