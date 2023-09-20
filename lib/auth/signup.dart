import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home.dart';

class SignUpPage extends StatefulWidget{
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>{
  bool obscureText = true;
  @override

  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [

            SizedBox(height: 40.h,),

            Text("Sign Up", style: TextStyle(fontSize: 30.sp),),
            Text("Here !", style: TextStyle(fontSize: 30.sp),),

            SizedBox(height: 30.h,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
                prefixIcon: Icon(Icons.person),

              ),
            ),
            SizedBox(height: 20.h,),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),

              ),
            ),
            SizedBox(height: 20.h,),

            TextFormField(
              obscureText: obscureText,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  icon: obscureText ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                  onPressed:() {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                ),

              ),
            ),
            SizedBox(height: 20.h,),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Mobile',
                prefixIcon: Icon(Icons.call),
                prefixText: '+234',

              ),
            ),
            SizedBox(height: 40.h,),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => UIHomePage()));},
                child: Text('Sign Up!'),


              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );

  }
}