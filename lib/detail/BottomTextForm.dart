import 'package:flutter/material.dart';

class BottomTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border
          color: Colors.white30
        ),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: '댓글을 작성해 주세요.',
              prefixIcon: Icon(
                Icons.comment,
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
}