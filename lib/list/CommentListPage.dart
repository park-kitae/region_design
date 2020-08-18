import 'package:flutter/material.dart';
import 'package:region_design/detail/CommentDetail.dart';
import 'package:region_design/detail/BottomTextForm.dart';

class CommentListPage extends StatelessWidget {
  final seq;

  const CommentListPage({Key key, this.seq}) : super(key: key);

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
          title: Text('댓글', style: TextStyle(fontSize: 20.0, color: Color(0xFF545D68))),
        ),

        body: Container(
          height: MediaQuery.of(context).size.height - 140,
          child: ListView(
            children: [
              CommentDetail(
                type: 5,
              )
            ],
          ),
        ),
        bottomSheet: BottomTextFormField()
    );
  }

}