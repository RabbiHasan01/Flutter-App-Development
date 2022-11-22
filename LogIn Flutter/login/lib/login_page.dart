// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 204, 211, 197),
        body: SafeArea(
          child: Center(
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_home,
                  size: 100,
                ),
                //hello again
                SizedBox(height: 30),
                Text('Hello Again!',
                  style: GoogleFonts.bebasNeue(
                    fontSize: 54,
                  ),
                ),

                SizedBox(height: 10),

                Text('Welcome Back. You\'ve been missed.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 20
                  )
                ),
                SizedBox(height: 30),
          
                //email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0 ),

                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 237, 241, 243),
                      border: Border.all(
                        color: Colors.white),
                         borderRadius: BorderRadius.circular(12),
                        
                        
                    ),
                    child:Padding(padding: const EdgeInsets.only(left:20.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                   ),
                  ),
                ),
                SizedBox(height: 10),
                //password
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0 ),

                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 244, 247, 248),
                      border: Border.all(
                        color: Colors.white),
                         borderRadius: BorderRadius.circular(12),
                        
                        
                    ),
                    child:Padding(padding: const EdgeInsets.only(left:20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                   ),
                  ),
                ),
                SizedBox(height: 10),

                //signin button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 231, 161, 139),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text('Sign In',
                        style: TextStyle(
                         color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize:18,
                        ),
                        
                      )
                    ),
                  ),
                ),
                SizedBox(height: 10),
          
                //register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a Account?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(' Register now', style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                )
             ],
            ),
          ),
     ),
    );
  }
}