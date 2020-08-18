import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:region_design/detail/CommentDetail.dart';
import 'package:region_design/detail/BottomTextForm.dart';

class NewsDetail extends StatelessWidget {
  final image, title, regDate;

  const NewsDetail({Key key, this.image, this.title, this.regDate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('뉴스', style: TextStyle(fontSize: 20.0, color: Color(0xFF545D68))),
      ),

      body: Container(
        height: MediaQuery.of(context).size.height - 140,
        child: ListView(
          children: [
            Hero(
              tag: image,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                    image,
                    fit: BoxFit.cover
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                  title,
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black87)
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 5.0),
              child: Text(
                  '작성일자 ' + regDate,
                  style: TextStyle(color: Colors.black87, fontSize: 14.0)
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                '인천국제공항공사가 1900여 명의 보안검색 요원을 청원경찰 신분으로 직고용한다고 밝히면서 파문이 커지고 있다. 인천공항공사는 24일 취업준비생을 중심으로 쏟아지는 채용 기회 형평성 문제에 대해 공개경쟁 채용의 기회를 모두에게 개방하겠다며 진화에 나섰다.인천공항공사는 24일 정부 가이드라인에 따라 노사전문가협의회를 구성해 정규직 전환을 합의하고 시설관리, 운영서비스, 경비 3개 자회사에 49개 용역, 5840명을 전환했다고 밝혔다. 특히 직고용 대상 2143명 중 보안검색 1902명은 하반기 채용 절차를 진행해 연내 정규직 전환을 완료하는 게 목표라고 설명했다.',
                style: TextStyle(color: Colors.black45),
              ),
            ),
            Container(
              height: 5,
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
              //color: Color(0xFFEEEEEE),
            ),
            CommentDetail()
          ],
        ),
      ),
      bottomSheet: BottomTextFormField()
    );
  }
}