// ignore_for_file: prefer_const_constructors

import 'package:ecommerce2/authentication/presentation/AppTextFormField.dart';
import 'package:ecommerce2/authentication/presentation/sign_up.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool matchPass = true;
 
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         foregroundColor: Colors.white60,
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              textAlign: TextAlign.center,
              'Login',
              style: TextStyle(color: Colors.white),
            ),
          ),
          
          ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 75,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuaFbSBB0jlzb2y86natz3_I5G9mob-Gvjg65QmHG8LZ9Dzd11352IaBGB7Fm5i-C-5qs&usqp=CAU'),
              ),
              AppTextFormField(
                name: 'User Name',
                icons: emailcontroller,
                ispass: false,
                 validate: (p0) {
                  if ((p0!).length >= 6 && matchPass == true) {
                    return null;
                  } else {
                    return ("Wrong password");
                  }
                },
              ),
              AppTextFormField(
                ispass: true,
                icons: passwordcontroller,
                name: 'Password',
                validate: (p0) {
                  if ((p0!).length >= 6 && matchPass == true) {
                    return null;
                  } else {
                    return ("Wrong password");
                  }
                },
              ),
            
                      TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return Signup2();
                  }));
                },
                child: Text("Don't Have account")),
            ],
          ),
        ),
      ),
    );
  }
}