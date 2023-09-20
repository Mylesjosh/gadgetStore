import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:gadget_store/auth/signup.dart';

import '../home.dart';

class LoginPage extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;

  @override

  Widget build(BuildContext context){

    return  Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),


        body: Container(

          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [

                SizedBox(height: 40.h,),

                Text("Here To Get", style: TextStyle(fontSize: 30.sp),),
                Text("Welcomed !", style: TextStyle(fontSize: 30.sp),),
                SizedBox(height: 30.h,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(

                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                    ),
                  ),
                ),

                SizedBox(height: 20.h,),

                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: TextFormField(
                    obscureText: obscureText,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: obscureText ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                        ),
                    ),
                  ),
                ),

                SizedBox(height: 40.h,),

                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => UIHomePage()));},
                    child: Text('Login'),


                  ),
                ),
                SizedBox(height: 20.h,),

                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('forgot password?',
                        style: TextStyle(color: Colors.black),)
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",
                      style: TextStyle(color: Colors.black),),
                    SizedBox(width: 5,),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Text(
                        'Signup Here',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )



    );

  }


}