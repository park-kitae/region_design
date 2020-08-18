import 'package:flutter/material.dart';
import 'package:region_design/detail/CommentDetail.dart';
import 'package:region_design/detail/BottomTextForm.dart';

class ArgumentDetail extends StatelessWidget {
  final title, content, regDate;

  const ArgumentDetail({Key key, this.title, this.content, this.regDate}) : super(key: key);

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
        title: Text('토론', style: TextStyle(fontSize: 20.0, color: Color(0xFF545D68))),
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
                  '등록일자 ' + regDate,
                  style: TextStyle(color: Colors.black87, fontSize: 14.0)
              ),
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                '인천국제공항공사가 1900여 명의 보안검색 요원을 청원경찰 신분으로 직고용한다고 밝히면서 파문이 커지고 있다. 인천공항공사는 24일 취업준비생을 중심으로 쏟아지는 채용 기회 형평성 문제에 대해 공개경쟁 채용의 기회를 모두에게 개방하겠다며 진화에 나섰다.인천공항공사는 24일 정부 가이드라인에 따라 노사전문가협의회를 구성해 정규직 전환을 합의하고 시설관리, 운영서비스, 경비 3개 자회사에 49개 용역, 5840명을 전환했다고 밝혔다. 특히 직고용 대상 2143명 중 보안검색 1902명은 하반기 채용 절차를 진행해 연내 정규직 전환을 완료하는 게 목표라고 설명했다.',
                style: TextStyle(color: Colors.black45),
              ),
            ),
            SizedBox(height: 30.0),
            SizedBox(height: 30.0),
            Center(
              child: Container(
                child: Text(
                  '소중한 의견을 내어주세요',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Center(
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    actionButton(true),
                    Container(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        'VS',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    actionButton(false),
                  ],
                ),
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

  Widget actionButton(type){
    return  RaisedButton(
      onPressed: () {},
      textColor: Colors.white,
      padding: EdgeInsets.only(left: 40.0, right: 40.0),
      color: type ? Colors.green : Colors.red,
      child: Text(
        type ? '찬성' : '반대',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }

}