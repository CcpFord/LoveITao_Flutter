import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quizapp/api/local_auth_api.dart';
import 'package:quizapp/screens/welcome/signup.dart';
import 'package:quizapp/screens/welcome/welcome_screen.dart';
import 'package:quizapp/services/auth.dart';
import 'package:quizapp/widgets/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String email, password;
  AuthService authService = new AuthService();
  bool _isLoading = false;

  signIn() async {
    if (_formKey.currentState.validate()) {
      setState(() {
        _isLoading = false;
      });
      await authService.signInEmailAndPass(email, password).then((val) {
        if (val != null) {
          setState(() {
            _isLoading = true;
          });
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => WelcomeScreen()));
        } else {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Availability'),
              content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 16),
                    Text(
                        'There was a problem logging in. Check your email and password or create an account !'),
                  ]),
              actions: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Ok'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFF85D74),
                  ),
                )
              ],
            ),
          );
        }
      });
    }
  }

  buildAuthenticate() async {
    final isAuthenticated = await LocalAuthApi.authenticate();

    if (isAuthenticated) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: appBar(context),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          brightness: Brightness.light,
        ),
        body: _isLoading
            ? Container(
                child: Center(
                child: CircularProgressIndicator(),
              ))
            : Form(
                key: _formKey,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  children: [
                    Column(children: [
                      SizedBox(height: size.height * 0.03),
                      SvgPicture.asset("assets/icons/login.svg",
                          height: size.height * 0.3, fit: BoxFit.fill),
                      SizedBox(height: size.height * 0.03),
                      TextFormField(
                        validator: (val) {
                          return val.isEmpty
                              ? "Please input your email !"
                              : null;
                        },
                        decoration: InputDecoration(hintText: 'Email'),
                        onChanged: (val) {
                          email = val;
                        },
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: (val) {
                          return val.isEmpty
                              ? "Please input your password !"
                              : null;
                        },
                        decoration: InputDecoration(hintText: 'Password'),
                        onChanged: (val) {
                          password = val;
                        },
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      GestureDetector(
                        onTap: () {
                          signIn();
                        },
                        child: pinkButton(context, "Sign in"),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      GestureDetector(
                        onTap: () {
                          buildAuthenticate();
                        },
                        child: pinkButton(context, "Sign in with FaceID"),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account ",
                            style: TextStyle(fontSize: 15.5),
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()));
                              },
                              child: Text("Sign up",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 15.5,
                                      decoration: TextDecoration.underline)))
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                    ]),
                  ],
                ),
              ));
  }
}
