import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
final _formKey = GlobalKey<FormState>();
final TextEditingController _SignUpController = TextEditingController();

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 285,
          height: 300,
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
                key: _formKey,
                child: Column(
                children: [
                  TextFormField(
                    controller: _SignUpController,
                    decoration: InputDecoration(
                      labelText: "Full name",
                      border:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      )
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your full name';
                      }
                      return null;
                    },
                  ),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Password()),).then((_){_SignUpController;;});
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      minimumSize: const Size(290, 50),

                    ),
                    child: Text ('Continue', style: TextStyle(color: Colors.white),),
                  )
                ],
              )
              )
              ],

            ),



          ),
        ),
      ),
    );
  }
}

class Password extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 330,
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
                    key: _formKey,
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
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Code()));
                            }
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 350,
          width: 285,
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Text('Confrim', style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'PoppinsEB')),
                Text('your account', style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'PoppinsEB')),
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
              ],
            ),
          ),
        ),
      )
    );
  }
}