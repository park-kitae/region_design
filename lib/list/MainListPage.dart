import 'package:flutter/material.dart';
import 'package:region_design/article/NewsItem.dart';
import 'package:region_design/article/PlenaryItem.dart';
import 'package:region_design/article/ArgumentItem.dart';
import 'package:region_design/article/CongressmanItem.dart';

class MainListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 0.0),
          NewsItem(
              title: '\'인천공항 분노\' 더 키운 정부 "정규직은 청년을 위한 것" "정규직은 청년을 위한 것"',
              image: 'assets/assembly_img.jpg',
              regDate: '2020-07-20',
              viewCount: 5,
              commentCount: 10,
              actionCount: 11
          ),
          PlenaryItem(
              title: '진실, 화해를 위한 과거사 정리 기본법 일부 개정 법률안(대안) 법률안(대안)',
              committee: '행정안전위원장',
              regDate: '2020-05-20',
              viewCount: 120,
              commentCount: 50,
              actionCount: 205
          ),
          ArgumentItem(
            title: '하준이법 시행 첫날 어떻게 생각 하시나요?',
            text: '버스나 지하철 등 대중교통 이용 상황에서 내 휴대전화 화면을 몰래 흘깃 훔쳐보는 이른바 스마트폰 \'흘깃 족\'에 대한 비판 목소리가 이어지고 있다 이들은 타인이 휴대폰으로 시청',
            regDate: '2020-07-21',
            viewCount: 15,
            commentCount: 3,
            actionCount: 10,
          ),
          NewsItem(
              title: '하준이법 시행 첫날 어떻게 생각 하시나요?',
              image: 'assets/simple.png',
              regDate: '2020-07-21',
              viewCount: 15,
              commentCount: 3,
              actionCount: 10
          ),
        ],
      ),
    );
  }
}