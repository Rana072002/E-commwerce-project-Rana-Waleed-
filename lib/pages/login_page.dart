import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/pages/profile_page.dart';
import 'package:untitled7/pages/registration_Page.dart';
import 'package:untitled7/pages/widgets/header_widget.dart';

import '../common/theme_helper.dart';
import 'forgot_password_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  double _headerHeight =250;
Key _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight,true,Icons.login_rounded),
            ),
            SafeArea(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20,10),
                margin: EdgeInsets.fromLTRB(20, 10, 20,10),
                child: Column(
    children: [
      Text(
    'Hello',
    style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold ),

    ),
      Text(
        'Sign In into your account' ,
          style: TextStyle(color: Colors.grey),
      ),
      SizedBox(height: 30.0),
      Form(
        key: _formKey,
        child: Column(
          children: [
            TextField(
              decoration: ThemeHelper().textInputDecoration( 'User Name', 'Enter your user name'),
            ),
                SizedBox(height: 30.0),
                Container(
                child:TextField(
                  obscureText: true,
                  decoration: ThemeHelper().textInputDecoration( 'Password', 'Enter your Password'),
                ),
                decoration:ThemeHelper().inputBoxDecorationShaddow(),
                ),
                SizedBox(height: 15.0),
                Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => ForgotPassworedPage()),);
                  },
                  child: Text('Forget your Password?',style:TextStyle(color:Colors.grey,),
                ),
                  ),
                ),
            Container(
              decoration: ThemeHelper().buttonBoxDecoration(context),
              child: ElevatedButton(
                style: ThemeHelper().bottonStyle(),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Text('Sign In'.toUpperCase(),style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.white),)
                ),
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                },
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
              //child: Text('Dont have an account? creat '),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text:"Dont have an account?"),
                    TextSpan(
                      text:'create',
                      recognizer: TapGestureRecognizer()
                        ..onTap =(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                        },
                        style: TextStyle(fontWeight:FontWeight.bold, color: Theme.of(context).accentColor,),
                    ),
                  ]
                )
              ),

            )
          ],
        ),
      )
    ],
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}