import 'package:flutter/material.dart';

void main(){
  runApp(new LeoQuizzApp());
}

class LeoQuizzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Leo Quizzler",
      home: Quizzler(),
    );
  }
}

class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {uble left =8.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        child: Column(
          children:<Widget> [
              Expanded(
                flex: 2,
                child: Center(
                  child: Text("QuestioinArea"),
                ),
              ),
              Divider(),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                     Padding(
                       padding: const EdgeInsets.only(right: 8.0,left:8.0),
                       child: RaisedButton(
                         
                         colorBrightness: Brightness.dark,
                         child: Text("True"),
                         onPressed: (){},
                         color: Colors.green,
                         ),
                     ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(this.left,),
                         child: RaisedButton(
                           colorBrightness: Brightness.dark,
                         child: Text("false"),
                         onPressed: (){},
                         color: Colors.red,
                         ),
                       ),
                  ],
                ),
              ),
                        ],
        ),
      ),
      
    );
  }
}