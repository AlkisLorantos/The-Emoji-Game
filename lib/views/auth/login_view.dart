import 'package:flutter/material.dart';
import 'package:the_emoji_game/components/default_button.dart';
import 'package:the_emoji_game/size_config.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Sign in with your email and password \nor continue with social media",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(), 
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(), 
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              Icon(
                Icons.error_outline,
                color: Colors.red,
                size: getProportionateScreenWidth(14),
              ), 
              SizedBox(
                width: getProportionateScreenWidth(10),
              ),
            ],
          ),
          DefaultButton(
            text: "Continue",
            press: () {},
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
          obscureText: true,
          keyboardType: TextInputType.emailAddress, 
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "Enter your password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 42,
              vertical: 20,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: Colors.grey),
              gapPadding: 10,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: Colors.grey),
              gapPadding: 10, 
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(
                0,
                getProportionateScreenWidth(20),
                getProportionateScreenWidth(20),
                getProportionateScreenWidth(20),
              ),
              child: 
              Icon(Icons.lock_outlined),
            ),
          ),
        );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress, 
       decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 42,
            vertical: 20,
         ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(color: Colors.grey),
            gapPadding: 10,
         ),
           focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: Colors.grey),
              gapPadding: 10, 
         ),
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(
                0,
                getProportionateScreenWidth(20),
                getProportionateScreenWidth(20),
                getProportionateScreenWidth(20),
              ),
              child: 
          Icon(Icons.email_outlined),
        ),
      ),
    );
  }
}