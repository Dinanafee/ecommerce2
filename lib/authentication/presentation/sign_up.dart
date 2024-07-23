import 'package:ecommerce2/authentication/presentation/AppTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Signup2 extends StatefulWidget {
  Signup2({super.key});

  @override
  State<Signup2> createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  @override
  Widget build(BuildContext context) {
    final  _formKey = GlobalKey<FormState>();
    String choise = 'Female';
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          const Color.fromARGB(255, 63, 2, 74),
          Color.fromARGB(255, 135, 36, 152),
          const Color.fromARGB(255, 164, 91, 177)
        ])),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                Text(
                  'Welcome',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80))),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  AppTextFormField(
                    name: 'Name',
                    ispass: false,
                    icons: Icon(Icons.person),
                    validate: (value) =>
                        value.isEmpty ? 'Please enter your name' : null,
                  ),
                  AppTextFormField(
                    name: 'Email',
                    icons: Icon(Icons.email),
                    ispass: false,
                    validate: (value) =>
                        value.isEmpty ? 'Please enter your email' : null,
                  ),
                  AppTextFormField(
                    name: 'Password',
                    icons: Icon(Icons.lock),
                    ispass: true,
                    validate: (p0) {
                        return ("Wrong password");
                      
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      initialCountryCode: 'EG',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: RadioListTile<String>(
                            title: const Text('Male'),
                            groupValue: choise,
                            value: "Male",
                            onChanged: (value) {
                              setState(() {
                                choise = value!;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile<String>(
                            title: const Text('Female'),
                            groupValue: choise,
                            value: "Female",
                            onChanged: (value) {
                              setState(() {
                                choise = value!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {

                        }
                        
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 30),
                      ))
                ],
              ),
            ),
          )),
        ]),
      ),
    );
  }
}
