
import 'package:flutter/material.dart';
import 'package:kitchen_organizer_app/loginPages/loginPage.dart';
import 'package:kitchen_organizer_app/loginPages/registerPage.dart';

class AuthLanding extends StatefulWidget {
  const AuthLanding({Key? key}) : super(key: key);

  @override
  State<AuthLanding> createState() => _AuthLandingState();
}

class _AuthLandingState extends State<AuthLanding> {

  bool showLogin = true;

  void toggleScreenOffAndOn(){
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin){
      return LoginPage(showRegisterPage: toggleScreenOffAndOn);
    } else {
      return RegisterPage(showLoginPage: toggleScreenOffAndOn);
    }
  }
}