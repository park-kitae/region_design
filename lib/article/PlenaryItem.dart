import 'package:flutter/material.dart';
import 'package:region_design/detail/PlenaryDetail.dart';

class PlenaryItem extends StatelessWidget{
  final String title;
  final String committee;
  final String regDate;
  final int viewCount;
  final int commentCount;
  final int actionCount;

  const PlenaryItem({Key key, this.title, this.committee, this.regDate, this.viewCount, this.commentCount, this.actionCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _build(title, committee, regDate, viewCount, commentCount, actionCount, context);
  }

}

Widget _build(String title, String committee, String regDate, int viewCount, int commentCount, int actionCount, context){
  return Container(
    padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => PlenaryDetail(
                  title: title,
                  committee: committee,
                  regDate: regDate,
              ))
          );
      },
      child: Container(
        /*decoration: BoxDecoration(
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
        child: Column(
          children: [
            SizedBox(height: 10.0),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, bottom: 10.0),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                    ),
                    width: 50,
                    child: Text(
                        '법률',
                        style: TextStyle(color: Colors.white, fontSize: 14.0)),
                  ),
                )
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              height: 40,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                    title,
                    style: TextStyle(color: Color(0xFF575E67), fontSize: 14.0)
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  committee,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '제안일자 ' + regDate,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8.0), child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
            Container(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.remove_red_eye,
                        size: 18,
                        color: Colors.grey,
                      ),
                      Container(
                        width: 30,
                        margin: EdgeInsets.only(left: 5.0, right: 10.0),
                        child: Text(
                          viewCount.toString(),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        Icons.comment,
                        size: 18,
                        color: Colors.grey,
                      ),
                      Container(
                        width: 30,
                        margin: EdgeInsets.only(left: 5.0, right: 10.0),
                        child: Text(
                          commentCount.toString(),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Icon(
                        Icons.thumb_up,
                        size: 18,
                        color: Colors.grey,
                      ),
                      Container(
                        width: 30,
                        margin: EdgeInsets.only(left: 5.0, right: 10.0),
                        child: Text(
                          actionCount.toString(),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                )
            )
          ],),
      ),
    ),
  );
}
