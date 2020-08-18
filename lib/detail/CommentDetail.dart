import 'package:flutter/material.dart';
import 'package:region_design/list/CommentListPage.dart';

class CommentDetail extends StatelessWidget {
  final type;

  const CommentDetail({Key key, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        commentHeader(context, 4),
        commentList(context)
      ],
    );
  }

  Widget commentHeader(context, commentCount){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
      width: MediaQuery.of(context).size.width,
      color: Color(0xFFEEEEEE),
      child: Text(
        '댓글 (' + commentCount.toString() + ")",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget commentList(context){
    return Container(
        child: Column(
            children: <Widget>[
              commentItem(1, '어른별', false, '2020-08-14 20:05:10', '같이 산야에 피어나는 군영과 같이 이상은 실로 인간의 부패를 방지하는 소금이라 할지니 인생에 가치를 주는 원질이 되는 것이다 그들은 앞이 긴지라 착목한는 곳이 원대하고 그들은 피가 더운지라 실현에 대한 자신과 용기가 있다', 30, false),
              commentItem(2, '지난일', false, '2020-08-14 12:45:34', '같이 산야에 피어나는 군영과 같이 이상은 실로 인간의 ', 12, true),
              commentItem(4, '오느', false, '2020-08-14 12:45:34', '같이 산야에 피어나는 군영과 같이 이상은 실로 인간의 ', 1, true),
              commentItem(5, '옆집', false, '2020-08-14 12:45:34', '같이 산야에 피어나는 군영과 같이 이상은 실로 인간의 ', 0, true),
              type != 5 ? addEtc(1, context) : SizedBox(height: 1),
              commentItem(3, '오늘', false, '2020-08-13 10:33:45', '같이 산야에 피어나는 군영과 같이 이상은 실로 인간의 부패를 방지하는 소금이라 할지니 인생에 가치를 주는 원질이 ', 2, false),
            ]
        )
    );
  }

  Widget commentItem(index, nickname, type, regdate, content, agreeCount, isChild){
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                  left: isChild ? 60.0 : 10.0,
                  top: 2.0
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      nickname,
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      content,
                      style: TextStyle(fontSize: 13, color: Colors.black54),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            regdate,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ),
                        Icon(
                        Icons.thumb_up,
                        size: 13,
                        color: Colors.grey,
                        ),
                        Container(
                          width: 30,
                          margin: EdgeInsets.only(left: 5.0, right: 10.0),
                          child: Text(
                            agreeCount.toString(),
                            style: TextStyle(color: Colors.grey),
                            ),
                        ),
                      ]
                    )
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget addEtc(seq, context){
    return Container(
      padding: EdgeInsets.only(left: 60.0, right: 10.0),
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CommentListPage(
                seq: seq,
              ))
          );
        },
        child: Text(
          '더보기...',
          style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.blue,
          ),
        ),
      )
    );
  }
}