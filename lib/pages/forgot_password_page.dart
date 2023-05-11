import 'package:flutter/material.dart';

class ForgotPassworedPage extends StatefulWidget{
  const ForgotPassworedPage({Key? key}) : super(key: key);

  @override
  State<ForgotPassworedPage> createState() => _ForgotPassworedPageState();
}
class  _ForgotPassworedPageState extends State<ForgotPassworedPage> {
  final _emailController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text('Enter your Email and we wil send you a password reset link',
            textAlign:TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Email',
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
          ),
          SizedBox(height: 10),

          MaterialButton(
              onPressed:(){},
            child: Text('Reset Password'),
            color: Colors.pinkAccent,
          ),
        ],
      ),
    );
  }
}



