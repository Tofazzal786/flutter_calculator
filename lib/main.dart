import 'package:flutter/material.dart';

import 'button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final List<String>buttons = [
    'c','DEL','%','/',
    '9','8','7','*',
    '6','5','4','-',
    '3','2','1','+',
    '0','.','ANS','=',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(children: <Widget>[
        //Expanded holo pura column ba row dokol kora...
        Expanded(
          child: Container(),
        ),
        Expanded(
          flex: 2, //flex holo column or row er kototuku jaiga dokol korbe...
          child: Container(
            //SliverGridDelegateWithFixedCrossAxisCount Constructors
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (BuildContext context, int index){
                return MyButton();
              }
            ),
          ),
        ),
      ]),
    );
  }
}
