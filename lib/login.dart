import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vegi_login/WIDGET/commonwidget.dart';
import 'package:vegi_login/home.dart';
import 'package:vegi_login/registration.dart';
class login extends StatefulWidget {
  static String Tag = "/";
  @override
  _loginState createState() => _loginState();
}
class _loginState extends State<login> {
  bool b = true;
  bool onoff = true;
  String eml = "";
  String pass = "";
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController em = TextEditingController();
  TextEditingController ps = TextEditingController();
  void btnsubmit(){
    if(formstate.currentState.validate()){
      Navigator.pushNamed(context, home.Tag);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Form(
                key:formstate,
                child: Column(children: <Widget>[
                  Padding(padding: EdgeInsets.all(10)),
                  Image.asset("assets/images/vegetables3.png"),
                  //Padding(padding: EdgeInsets.all(20)),
                  Text("The Vegetable Shop",
                    style:TextStyle(
                      fontSize: 28,
                      color: Colors.green[400],
                      fontWeight: FontWeight.bold,
                    ) ,),
                  Padding(padding: EdgeInsets.all(30)),
                  getformfield(em, "email",prefixicon: Icon(Icons.email)),
                  Padding(padding: EdgeInsets.only(top: 12)),
                  getformfield(ps, "Password",
                      obsecure: b,
                      prefixicon: Icon(Icons.lock),
                      suffixicon: IconButton(
                          icon: (b ==true)
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              b = !b;
                            });
                          })),


                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: btn(btnsubmit),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text("Don`t have an account yet ?",style: TextStyle(fontWeight: FontWeight.bold),),
                          //Padding(padding: EdgeInsets.only(left: 1)),
                          InkWell(onTap: ()
                          { Navigator.pushNamed(context, registration.Tag);},
                              child: Text("Register Now", style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),)),

                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
