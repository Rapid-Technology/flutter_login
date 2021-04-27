import 'package:flutter/material.dart';
import 'package:flutter_login/MyTextField.dart';
import 'package:flutter_login/SocialItem.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 120,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 70),
                  child: Text(
                    "Rapid Technology",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                MyTextField(
                  hint: "Email",
                  controller: emailController,
                  inputType: TextInputType.emailAddress,
                  isPassword: false,
                ),
                MyTextField(
                  hint: "Password",
                  controller: passwordController,
                  inputType: TextInputType.text,
                  isPassword: true,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.green[700],
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () => debugPrint("go to home page"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35.0),
                  child:
                      Text("----------------- OR Login With -----------------"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialItem(
                      image: 'assets/images/gmail.png',
                    ),
                    SocialItem(
                      image: 'assets/images/facebook.png',
                    ),
                    SocialItem(
                      image: 'assets/images/instagram.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have account yet? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.green[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
