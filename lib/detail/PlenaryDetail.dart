import 'package:flutter/material.dart';
import 'package:region_design/detail/CommentDetail.dart';
import 'package:region_design/detail/BottomTextForm.dart';

class PlenaryDetail extends StatelessWidget {
  final title, regDate, committee;

  const PlenaryDetail({Key key, this.title, this.regDate, this.committee}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('법률', style: TextStyle(fontSize: 20.0, color: Color(0xFF545D68))),
      ),

      body: Container(
        height: MediaQuery.of(context).size.height - 140,
        child: ListView(
          children: [
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                  title,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black87)
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 5.0),
              child: Text(
                  '제안일자 ' + regDate,
                  style: TextStyle(color: Colors.black87, fontSize: 14.0)
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                  committee,
                  style: TextStyle(color: Colors.black87, fontSize: 14.0)
              ),
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                '이 법에 따라 설립된 “진실·화해를위한과거사정리위원회(이하 “위원 회”라고 함)”는 2006년 4월 24일부터 2010년 6월 30일까지 약 4년 2개 월의 조사활동을 마친 후 2010년 12월 31일 해산하였음. 그러나 신청기간의 제한과 짧은 조사활동으로 인해 상당수 피해자 에 대한 규명이 완료되지 못하였고, 국가기관의 권고사항 이행을 비롯 한 후',
                style: TextStyle(color: Colors.black45),
              ),
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                '제안자',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text('김병관의원 등 10인'),
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                '심사 진행 단계',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 10.0),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  judgeItem('접수', false),
                  judgeItem('본회의 심의', false),
                  judgeItem('정부 이송', true),
                  judgeItem('공포', false),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                '표결 결과',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              alignment: Alignment.center,
              child: Row(
                children: [
                  actionItem(0, 125),
                  actionItem(1, 12),
                  actionItem(2, 130),
                ],
              ),
            ),
            SizedBox(height: 40.0),
            CommentDetail()
          ],
        ),
      ),
      bottomSheet: BottomTextFormField()
    );
  }

  Widget judgeItem(text, bool isOn){
    return Expanded(
      child: Container(
        height: 30,
        child: Text(
          text,
          style: TextStyle(color: isOn ? Colors.blueAccent : Colors.black45),
        ),
        color: Color(0xFFEEEEEE),
        alignment: Alignment.center,
      ),
    );

  }

  Widget actionItem(type, count){
    String text = type == 0 ? '찬성' : type == 1 ? '기권' : '반대';
    return Expanded(
      child: Container(
        width: 100,
        height: 30,
        color: type == 0 ? Colors.green : type == 1 ? Colors.amberAccent : Colors.red,
        alignment: Alignment.center,
        child: Text(
          text + ' (' + count.toString() + ')',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}