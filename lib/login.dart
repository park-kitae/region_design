import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:region_design/SignIn.dart';
import 'package:region_design/component/CustomTextField.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 40),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'RegionNews',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '우리 지역의 국회',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40,vertical: 50),
                    height: MediaQuery.of(context).size.height * 0.70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25)
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Welcome",style: TextStyle(
                            color: Color(0xFFF032f42),
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        )),
                        Text("Sign to continue",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25
                        )),
                        SizedBox(height: 40),
                        CustomTextField(
                          label: "아이디",
                        ),
                        SizedBox(height: 10),
                        CustomTextField(
                          label: "비밀번호",
                          isPassword: true,
                          icon: Icon(Icons.https, size: 27,color: Color(0xFFF032f41),),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(top: 10.0),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => Signin())
                              );
                            },
                            child: Text(
                              '회원가입',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                              ),
                            ),
                          )
                        ),
                        SizedBox(height: 30),
                        LoginButton()
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 10, bottom: 10),
      color: Colors.grey,
      alignment: Alignment.center,
      child: Text(
          '로그인',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
      ),
    );
  }
  
}