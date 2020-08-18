import 'package:flutter/material.dart';
import 'package:region_design/article/NewsItem.dart';
import 'package:region_design/article/PlenaryItem.dart';
import 'package:region_design/article/ArgumentItem.dart';
import 'package:region_design/article/CongressmanItem.dart';

class LocationListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 0.0),
          CongressmanItem(
            name: '강훈식(姜勳植)',
            image: 'assets/congressman.jpg',
            cmitName: '더불어민주당',
            location: '충남 아산시을',
            polyName: '교육위원회',
          ),
          PlenaryItem(
              title: '진실, 화해를 위한 과거사 정리 기본법 일부 개정 법률안(대안) 법률안(대안)',
              committee: '행정안전위원장',
              regDate: '2020-05-20',
              viewCount: 120,
              commentCount: 50,
              actionCount: 205
          ),
        ],
      ),
    );
  }
}