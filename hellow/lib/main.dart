//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Container(
                  width: 70,
                  height: 70,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffd8d8d8)
                  ),
                  child: FlutterLogo()),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                child: Text("ADVISORY LAWYER",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30),
                ),
              ),
              Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      decoration: InputDecoration(
                        labelText: "USER NAME",
                        labelStyle: 
                            TextStyle(color: Color(0xff888888), fontSize: 15)
                        ),
                    ),
              ),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "PASSWORD",
                        labelStyle: 
                            TextStyle(color: Color(0xff888888), fontSize: 15)
                        ),
                    ),
                  )
                ],
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                    onPressed: onSignInClicked,
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                  ),
                ),
              ),
              Container(
                  height: 130,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                        Text(
                          "SIGN UP",
                          style: TextStyle(fontSize: 15,color: Color(0xff888888)),
                        ),
                        Text(
                          "FORGOT PASSWORD",
                          style: TextStyle(fontSize: 15,color: Colors.blue),
                        )

                      ],
                    ),
                )
              

            ],
          ),
        ),
      ),
    );
  }


  void onSignInClicked(){}
}


  

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:  AppBar(
          title: Text('My App Demo'),
        ),
        body: Center(
          child: Text(
              'Hello World',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue[300],
              ), 
           ),
        ),
      ),
    );
  }
}*/