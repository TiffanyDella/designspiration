import 'package:designspiration/StartScreens/SignIn.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Email extends StatelessWidget{
  const Email({super.key});
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
          height: 350,
          width: 285,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
               const Text('Join the', style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'PoppinsEB'),),
                const Text('Community', style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'PoppinsEB'),),
                const Padding(padding: EdgeInsets.only(top: 20.0)),
                Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          border:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 20.0)),
                      ElevatedButton(
                        onPressed: () {

                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()),);

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: const Size(290, 50),

                        ),
                        child: const Text('Continue', style: TextStyle(color: Colors.white),),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 10.0)),
                      RichText(textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: <TextSpan>[
                        TextSpan(text: 'Have an account? '),
                        TextSpan(text: 'Log In', recognizer: TapGestureRecognizer() .. onTap = () {Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()),);})
                        ],
                      ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      RichText(textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(text: 'By continuing, you agree to Designspiration\'s '),
                            TextSpan(text: 'Terms of Service', recognizer: TapGestureRecognizer() .. onTap = () => _launchURL('https://www.designspiration.com/about/terms-of-service/')),
                            TextSpan(text: 'and acknowledge you’ve read our '),
                            TextSpan(text: 'Privacy Policy', recognizer: TapGestureRecognizer() .. onTap = () => _launchURL('https://www.designspiration.com/about/privacy-policy/')),
                          ],
                        ),
                      ),
                  ],
                  ),
              ],
            ),
          ),
        ),
      ),

    );

  }
}

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello'),),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
            height: 300,
            width: 285,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text('What\'s', style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'PoppinsEB')),
                Text('your name', style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'PoppinsEB')),
                Padding(padding: EdgeInsets.only(top: 20.0)),
              Form(

                child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Full name",
                      border:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  ElevatedButton(
                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context) => Password()),);

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      minimumSize: const Size(290, 50),

                    ),
                    child: Text ('Continue', style: TextStyle(color: Colors.white),),
                  )
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

class Password extends StatelessWidget{
  const Password({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello'),),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
            height: 350,
            width: 285,
          child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Text('Set your', style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'PoppinsEB')),
                  Text('Password', style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'PoppinsEB')),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Form(

                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "password",
                              border:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              )
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20.0)),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "password",
                              border:  OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              )
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20.0)),
                        ElevatedButton(
                          onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Code()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            minimumSize: const Size(290, 50),

                          ),
                          child: Text ('Continue', style: TextStyle(color: Colors.white),),
                        )
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



class Code extends StatelessWidget {
  final List<TextEditingController> controllers = List.generate(6, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 350,
          width: 350,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Confirm',
                  style: TextStyle(
                      color: Colors.black, fontSize: 30, fontFamily: 'PoppinsEB'),
                ),
                Text(
                  'your account',
                  style: TextStyle(
                      color: Colors.black, fontSize: 30, fontFamily: 'PoppinsEB'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text('We have sent a verification code to your'),
                ),
                Text('email. To continue, please enter the code'),
                Text('below.'),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text('Didn\'t receive a code? Resend'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(6, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 40,
                        child: TextField(
                          controller: controllers[index],
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          decoration: InputDecoration(
                            counterText: '',
                            hintText: '-',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide(
                                  color: Colors.white, width: 2.0),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length == 1 && index < 5) {
                              FocusScope.of(context).nextFocus();
                            } else if (value.isEmpty && index > 0) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

