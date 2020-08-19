import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
            color: Colors.blue,
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
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '우리 지역의 국회',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
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
                        SizedBox(height: 40),
                        ButtonLoginAnimation(
                          label: "로그인",
                          fontColor: Colors.white,
                          background: Color(0xFFF1f94aa),
                          borderColor: Color(0xFFF1a7a8c),
                        )
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

class CustomTextField extends StatelessWidget {

  final String label;
  final Widget icon;
  final bool isPassword;

  const CustomTextField({Key key, this.label, this.icon, this.isPassword = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Color(0xFFF234253),fontWeight: FontWeight.bold),
      obscureText: isPassword,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.0)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.0)
          ),
          labelText: label,
          labelStyle: TextStyle(color: Color(0xFFF234253),fontWeight: FontWeight.bold),
          suffixIcon: icon
      ),

    );
  }
}

class ButtonLoginAnimation extends StatefulWidget {

  final String label;
  final Color background;
  final Color borderColor;
  final Color fontColor;
  final Function onTap;
  final Widget child;

  const ButtonLoginAnimation({Key key, this.label, this.background, this.borderColor, this.fontColor, this.onTap, this.child}) : super(key: key);

  @override
  _ButtonLoginAnimationState createState() => _ButtonLoginAnimationState();
}

class _ButtonLoginAnimationState extends State<ButtonLoginAnimation>
    with TickerProviderStateMixin {

  AnimationController _positionController;
  Animation<double> _positionAnimation;

  AnimationController _scaleController;
  Animation<double> _scaleAnimation;

  bool _isLogin = false;
  bool _isIconHide = false;

  @override
  void initState() {
    super.initState();

    _positionController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 800)
    );

    _positionAnimation = Tween<double>(begin: 10.0, end: 255.0)
        .animate(_positionController)..addStatusListener((status){
      if(status == AnimationStatus.completed){
        setState(() {
          _isIconHide = true;
        });
        _scaleController.forward();
      }
    });

    _scaleController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 900)
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 32)
        .animate(_scaleController)..addStatusListener((status){
      if(status == AnimationStatus.completed){
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          _isLogin = true;
        });
        _positionController.forward();
      },
      child: Container(
        height: 63,
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.background,
          borderRadius: BorderRadius.circular(14),
        ),
        child: !_isLogin ? Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.label, style: TextStyle(
                color: widget.fontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold
            )),
            SizedBox(width: 10),
            Icon(Icons.arrow_forward, color: widget.fontColor,size: 32)
          ],
        ) : Stack(
          children: <Widget>[
            AnimatedBuilder(
              animation: _positionController,
              builder: (context, child) => Positioned(
                left: _positionAnimation.value,
                top: 5,
                child: AnimatedBuilder(
                  animation: _scaleController,
                  builder: (context,build) => Transform.scale(
                      scale: _scaleAnimation.value,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: widget.borderColor,
                          shape: BoxShape.circle,
                        ),
                        child: !_isIconHide ? Icon(Icons.arrow_forward, color: widget.fontColor,size: 32) : Container(),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}