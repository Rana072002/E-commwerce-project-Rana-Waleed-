import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled7/common/theme_helper.dart';
import 'package:untitled7/pages/profile_page.dart';
import 'package:untitled7/pages/widgets/header_widget.dart';

class RegistrationPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){
    return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<RegistrationPage>{

  final Key _formKey = GlobalKey<FormState>();
bool checkedValue = false;
  bool checkedboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 150,
                  child:HeaderWidget(150, false, Icons.person_add_alt_1_rounded),
            ),
            Container(
              margin:EdgeInsets.fromLTRB(25, 50,25, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        GestureDetector(
                          child: Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    width: 5, color: Colors.white),
                                  color:Colors.white,
                                  boxShadow:[
                                    BoxShadow(
                                      color:Colors.black12,
                                      blurRadius:20,
                                      offset: const Offset(5, 5),

                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.grey.shade300,
                                  size: 80.0,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(80, 80, 0,0),
                                child: Icon(
                                  Icons.add_circle,
                                  color: Colors.grey.shade700,
                                  size: 45.0,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().textInputDecoration('First Name','Enter your first name'),
                          ),
                            decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 30,),
                        Container(
                          child: TextFormField(
                            decoration:ThemeHelper().textInputDecoration('Last Name','Enter your last name'),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper().inputDecoration("E-mail adress","Enter your email"),
                            keyboardType: TextInputType.emailAddress,
                            validator: (val) {
                              if (val!.isEmpty);
                              return"Enter a valid email adress";
                            }
                          ),
  decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
  Container(
      child: TextFormField(
      decoration:ThemeHelper().textInputDecoration(
      "Mobile Number",
  "Enter your mobile number"),
  keyboardType: TextInputType.phone,
  validator: (val){
    if(!(val!.isEmpty)&& !RegExp(r"^(/d+)*S").hasMatch(val)){
    return "Enter a valid phone number";
    }
    return null;
    },
      ),
    decoration: ThemeHelper().inputBoxDecorationShaddow(),
      ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            obscureText: true,
                            decoration: ThemeHelper().textInputDecoration(
                              "Password" ,"Enter your password"),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please enter your password";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 15.0),
                        FormField<bool>(
                          builder:(state) {
                            return Column(
                              children: <Widget>[
                                Row(
                                  children:<Widget> [
                                    Checkbox(
                                        value:checkedboxValue,
                                        onChanged:(value) {
                                          setState(() {
                                            checkedboxValue = value!;
                                            state.didChange(value);
                                          });
                                        }),
                                    Text("I accept all terms and conditions.", style:TextStyle(color:Colors.grey),),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ?? '',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color:Theme.of(context).errorColor,fontSize: 12,),
                                  ),
                                ),
                                Container(
                                  decoration: ThemeHelper().buttonBoxDecoration(context),
                                  child: ElevatedButton(
                                    style: ThemeHelper().bottonStyle(),
                                    child: Padding(
                                        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                                        child: Text('Register'.toUpperCase(),style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.white),)
                                    ),
                                    onPressed: (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                                    },
                                  ),
                                ),


                              ],
                            );
                          },
                          validator: (value) {
                            if(!checkedboxValue){
                              return 'You need to accept terms and conditions';
                            }else{
                              return null;
                            }
                          },
                        ),

                        SizedBox(height: 30.0),
                        Text("Or creat account using social media" , style: TextStyle(color:Colors.grey),),
                        SizedBox(height: 25.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: FaIcon(
                                FontAwesomeIcons.googlePlus, size:35,
                                color: HexColor("#EC202F"),),
        onTap:(){
    setState(() {
    showDialog(
    context: context,
    builder: (BuildContext context) {
    return ThemeHelper().alertDialog("Google Plus" ,"You tap on Google Plus social icon" , context);
    },
    );
    });
    },
        ),
        SizedBox(width: 30.0),
        GestureDetector(
          child:Container(
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 5,color: HexColor("#40ABF0")),
              color: HexColor("40ABF0"),
            ),
            child:FaIcon(
              FontAwesomeIcons.twitter, size:23,
              color: HexColor("#FFFFFF"),),
            ),
          onTap:(){
              setState(() {
              showDialog(
              context: context,
              builder: (BuildContext context) {
              return ThemeHelper().alertDialog("Twitter","You tap on Twitter social icon" , context);
          },
          );
          });
              },
          ),
          SizedBox(width: 30.0),
            GestureDetector(
              child:FaIcon(
                FontAwesomeIcons.facebook, size:23,
                color: HexColor("#3E529C"),),
              onTap:(){
                  setState(() {
                  showDialog(
                  context: context,
                  builder: (BuildContext context) {
                  return ThemeHelper().alertDialog("Facebook" ,"You tap on facebook social icon" , context);
              },
              );
              });
                  },
              ),
              ],


    ),
    ],
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    );
  }
}

