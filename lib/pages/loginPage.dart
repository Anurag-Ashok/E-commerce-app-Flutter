import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_e_comerce/controllers/authController.dart';
import 'package:new_e_comerce/pages/signupPage.dart';

import 'package:new_e_comerce/widgets/myButton.dart';
import 'package:new_e_comerce/widgets/passwordField.dart';
import 'package:new_e_comerce/widgets/textFormFeild.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

final ctrl = Get.put(Authcontroller());
bool obserText = true;

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              child: Center(
                  child: Text(
                'sign in',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              )),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  myTextFormFeild(controller: ctrl.loginemail, name: "email"),
                  SizedBox(
                    height: 30,
                  ),
                  PasswordTextFormField(
                      controller: ctrl.loginpassword,
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        setState(() {
                          obserText = !obserText;
                        });
                      },
                      name: "password",
                      obserText: obserText),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    child: MyButton(
                        name: ctrl.loading.value
                            ? CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : Text("Sign in"),
                        onPressed: () {
                          ctrl.signIn();
                        },
                        color: Colors.greenAccent),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text('I dont have Account'),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => signupPage(),
                              ));
                        },
                        child: Text(
                          ' SignUp',
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
