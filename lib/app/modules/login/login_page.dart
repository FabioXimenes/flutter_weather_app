import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wheather_app/app/shared/utils/colors.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Modular.get();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/login_image.jpg'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter),
            ),
          ),
          Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 250),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(25),
                child: ListView(children: <Widget>[
                  Observer(builder: (_) {
                    return TextField(
                      onChanged: (value) {
                        loginController.setEmail(value);
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          prefixIcon: Icon(
                            Icons.mail_outline,
                            size: 20,
                          ),
                          labelStyle: TextStyle(
                            fontSize: 15,
                          )),
                    );
                  }),
                  Observer(builder: (_) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: TextField(
                        onChanged: (value) {
                          loginController.setPassword(value);
                        },
                        obscureText: !loginController.isVisible,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              size: 20,
                            ),
                            suffixIcon: Observer(builder: (_) {
                              return GestureDetector(
                                onTap: loginController.setVisibility,
                                child: loginController.isVisible
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                              );
                            }),
                            labelStyle: TextStyle(
                              fontSize: 15,
                            )),
                      ),
                    );
                  }),
                  Observer(builder: (_) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: MaterialButton(
                        onPressed: loginController.isFilled
                            ? () {
                                Modular.to.pushReplacementNamed('/home');
                              }
                            : null,
                        // onPressed: (){},
                        child: Text('Login'),
                        disabledColor: Colors.grey,
                        color: color2,
                        elevation: 5,
                        minWidth: MediaQuery.of(context).size.width * 0.85,
                        height: 50,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
                  }),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          text: 'Forgot your password?',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Redefine password!');
                            }),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Don\'t have an account? ',
                                style: TextStyle(color: Colors.grey)),
                            TextSpan(
                                text: 'Sign up.',
                                style: TextStyle(
                                  color: color2,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print('Sign Up Page');
                                  }),
                          ],
                        )),
                  )
                ]),
              )),
        ],
      ),
    );
  }
}
