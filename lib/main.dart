import 'package:flutter/material.dart';

void main(){
  runApp(new Quizzler());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Leo Quizzler",
      home: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:10),
          child: LeoQuizPage(),
        ),
      ),
    );
  }
}

class LeoQuizPage extends StatefulWidget {
  @override
  _LeoQuizPageState createState() => _LeoQuizPageState();
}

class _LeoQuizPageState extends State<LeoQuizPage> {
  @override
  Widget build(BuildContext context) {
    return quizPage();
  }
  Widget quizPage()
  {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Center(
              child: Text(
                "Here is a question text",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Expanded(
                                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: <Widget>[
                        FlatButton(
                          child: Text("True"),
                          onPressed: (){},
                          colorBrightness: Brightness.dark,
                          color: Colors.green,
                        ),
                        FlatButton(
                          child: Text("False"),
                          onPressed: (){},
                          colorBrightness: Brightness.dark,
                          color: Colors.red,
                        )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.done,color: Colors.green,),
                      Icon(Icons.close,color: Colors.red,)
                      
                    ],
                  )
                )

              ],
            ),
          )

        ],
      );
  }
}