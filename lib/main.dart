import 'package:designspiration/StartScreens/SignIn.dart';
import 'package:designspiration/StartScreens/SignUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(), // Указываем стартовый виджет приложения
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 285,
          height: 400,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Save & explore', style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'PoppinsEB')),
                  Text('Ideas that', style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'PoppinsEB')),
                  Text('inspire', style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'PoppinsEB')),
                  Text('your creativity.', style: TextStyle(color: Colors.black, fontSize: 30, fontFamily: 'PoppinsEB')),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text('Save creative inspiration, '),
                  ),
                  Text('colors, links, notes,'),
                  Text('screenshots with our new'),
                  Text('Browser Extension.'),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Row(

                    children: [


                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: const Size(130, 50),
                        ),
                      child: Text('Sing Up', style: TextStyle(color: Colors.white, fontSize: 15),),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white54,
                          minimumSize: const Size(130, 50),
                        ),
                        child: Text('Sign In', style: TextStyle(color: Colors.black, fontSize: 15),),
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




