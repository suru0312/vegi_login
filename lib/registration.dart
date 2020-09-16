import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vegi_login/home.dart';
import 'package:vegi_login/login.dart';
import 'package:vegi_login/main.dart';
import 'package:vegi_login/WIDGET/commonwidget.dart';

class registration extends StatefulWidget {
  static String Tag = "registrartion";

  @override
  _registrationState createState() => _registrationState();
}
class _registrationState extends State<registration> {
  bool b = true;
  String phone = "";
  String email = "";
  String password = "";
  String firstn = "";
  String lastn = "";
  String phn = "";
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController fn = TextEditingController();
  TextEditingController ln = TextEditingController();
  TextEditingController em = TextEditingController();
  TextEditingController ph = TextEditingController();
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
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Form(
                key: formstate,
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(10)),
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: getformfield(fn, "Firstname",
                              prefixicon: Icon(Icons.person)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3),
                        ),
                        Flexible(
                          child: getformfield(ln, "Lastname"),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 12)),
                    getformfield(em, "Email", prefixicon: Icon(Icons.email)),
                    Padding(padding: EdgeInsets.only(top: 12)),
                    getformfield(ph, "Mobile No",
                        prefixicon: Icon(Icons.phone),
                        prefixtext: "+91 ",
                        inputType: TextInputType.phone),
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
                          child:btn(btnsubmit),
                        ),

                      ],
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "Already have an account ?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          InkWell(onTap: (){ Navigator.pushNamed(context,login.Tag);},
                              child: Text("sign in", style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),)),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
