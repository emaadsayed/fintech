import 'package:flutter/material.dart';
import 'package:flutter_one/pages/registration_page.dart';
import 'package:flutter_one/widgets/btn_widget.dart';
import 'package:flutter_one/widgets/herder_container.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 30),
      child: Column(
        children: <Widget>[
          HeaderContainer(""),
          Container(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  _textInput(hint: "Email", icon: Icons.email),
                  _textInput(hint: "Password", icon: Icons.vpn_key),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    child: Center(
                      child: ButtonWidget(
                        onClick: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => RegPage()));
                        },
                        btnText: "LOGIN",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 110,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegPage()));
                    },
                    child: new Padding(
                      padding: new EdgeInsets.all(10.0),
                      child: new Text("Don't have an account ? Registor"),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _textInput({controller, hint, icon}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
