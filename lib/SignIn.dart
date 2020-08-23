import 'package:flutter/material.dart';
import 'package:region_design/component/CustomTextField.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Container(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child:  Column(
              children: [
                SizedBox(height: 30),
                formTitle('아이디'),
                CustomTextField(
                  label: "아이디",
                ),
                SizedBox(height: 20),
                formTitle('비밀번호'),
                CustomTextField(
                  label: "비밀번호",
                  isPassword: true,
                  icon: Icon(Icons.https, size: 27,color: Color(0xFFF032f41),),
                ),
                SizedBox(height: 20),
                formTitle('비밀번호 재확인'),
                CustomTextField(
                  label: "비밀번호 재확인",
                  isPassword: true,
                  icon: Icon(Icons.https, size: 27,color: Color(0xFFF032f41),),
                ),
                SizedBox(height: 20),
                formTitle('나이대'),
                SelectAgeWidget(
                  item: [10,20,30,40,50]
                ),
                SizedBox(height: 20),
                formTitle('사는지역'),
                SelectAgeWidget(
                    item: [1,2,3]
                ),
                SizedBox(height: 20),
                formTitle('사는구'),
                SelectAgeWidget(
                    item: [1,2,3]
                )
              ],
            ),
          )
        ),
      ),
    );
  }

  Widget formTitle(text){
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(bottom: 10.0),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15
        ),
      ),
    );
  }

  Widget warningField(text){
    return Container(
      child: Text(text,
        style: TextStyle(
            decoration: TextDecoration.underline,
            color: Colors.deepOrangeAccent
        ),
      ),
    );
  }
}

class SelectAgeWidget extends StatefulWidget {
  final List<int> item;

  SelectAgeWidget({Key key, this.item}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _SelectAgeWidgetState(item);
}

class _SelectAgeWidgetState extends State<SelectAgeWidget> {
  final List<int> ageList;
  int selectAge;

  _SelectAgeWidgetState(this.ageList);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int> (
        value: selectAge,
        icon: Icon(Icons.arrow_drop_down),
        isExpanded: true,
        iconSize: 20,
        onChanged: (int newValue) {
          setState(() {
            selectAge = newValue;
          });
        },
        items: ageList.map<DropdownMenuItem<int>>((int value){
          return DropdownMenuItem<int>(
            value: value,
            child: Text(value.toString() + ' 대'),
          );
        }) .toList(),
    );
  }
}