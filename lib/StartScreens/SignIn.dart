import 'package:designspiration/GeneralScreens/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello'),),
      backgroundColor: Colors.white,
      body: Center(
          child: Container(
              height: 550,
              width: 285,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Log in to', style: TextStyle(color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'PoppinsEB')),
                      Text('your account', style: TextStyle(color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'PoppinsEB')),
                      Padding(padding: EdgeInsets.only(top: 20.0)),
                      Form(

                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Email Address",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  )
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 20.0)),
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  )
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: 20.0)),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                minimumSize: const Size(290, 50),

                              ),
                              child: Text('Log in with Email', style: TextStyle(
                                  color: Colors.white),),

                            ),
                            Padding(padding: EdgeInsets.only(top: 5.0)),
                            Text('or', style: TextStyle(fontSize: 15),),
                            Padding(padding: EdgeInsets.only(top: 10.0)),

                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(59, 89, 152, 1),
                                minimumSize: const Size(290, 50),
                              ),

                              child: Text(
                                'Log in with Facebook', style: TextStyle(
                                  color: Colors.white),),),

                            Padding(padding: EdgeInsets.only(top: 10.0)),

                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(66, 133, 244,
                                    1),
                                minimumSize: const Size(290, 50),
                              ),

                              child: Text(
                                'Log in with Google', style: TextStyle(
                                  color: Colors.white),),),
                            Padding(padding: EdgeInsets.only(top: 10.0)),
                            RichText(textAlign: TextAlign.center,
                              text: TextSpan(
                                style: TextStyle(fontSize: 16,
                                    color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'By continuing, you agree to Designspiration\'s '),
                                  TextSpan(text: 'Terms of Service', style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  ),
                                      recognizer: TapGestureRecognizer()
                                        .. onTap = () =>
                                            _launchURL(
                                                'https://www.designspiration.com/about/terms-of-service/')),
                                  TextSpan(
                                      text: ' and acknowledge you’ve read our '),
                                  TextSpan(text: 'Privacy Policy', style: TextStyle(
                                    decoration: TextDecoration.underline,
                                  ),
                                      recognizer: TapGestureRecognizer()
                                        .. onTap = () =>
                                            _launchURL(
                                                'https://www.designspiration.com/about/privacy-policy/')
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              )
          )
      ),
    );
  }
}