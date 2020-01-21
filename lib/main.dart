import 'package:flutter/material.dart';
import 'package:leo_quizzler_app/MockData.dart';
import 'package:leo_quizzler_app/Questions.dart';

void main(){
  runApp(new Quizzler());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Leo Quizzler",
      home: Scaffold(
        backgroundColor:Colors.black,
        body: SafeArea(
         child:Padding(
          padding: EdgeInsets.symmetric(vertical:10),
          child: LeoQuizPage(),
        ),
      ),
    ));
  }
}

class LeoQuizPage extends StatefulWidget {
  @override
  _LeoQuizPageState createState() => _LeoQuizPageState();
}

class _LeoQuizPageState extends State<LeoQuizPage> {
  var scoreTracker =new List<Icon>();
  int count=0;
  var trueIcon=Icon(Icons.done,color: Colors.green,);
  var falseIcon=Icon(Icons.close,color:Colors.red);
  
  static List<Question> question=MockData.fetctData();
  int length=question.length-1;
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
               question[count].questionText,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                ),
            ),
          ),),

          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Expanded(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: <Widget>[
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 30.0,bottom: 8.0),
                              child: FlatButton(
                              child: Text("True",style: TextStyle(
                                fontSize: 24.0,
                                fontWeight:FontWeight.w600,
                              ),),
                              onPressed: (){

                              },
                              colorBrightness: Brightness.dark,
                              color: Colors.green,
                          ),
                            ),
                        ),
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 30.0,top: 8.0),
                              child: FlatButton(
                              child: Text("False",style:TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w600,
                              )),
                              onPressed: (){

                              },
                              colorBrightness: Brightness.dark,
                              color: Colors.red,
                          ),
                            ),
                        )
                    ],
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                     Container(
                       child: Padding(
                         padding: EdgeInsets.only(left: 18.0),
                         child: Row(
                           children: <Widget>[
                              Icon(Icons.done,color: Colors.green,),
                      Icon(Icons.close,color: Colors.red,),
                      Icon(Icons.done,color: Colors.green,),
                      Icon(Icons.done,color: Colors.green,),
                      Icon(Icons.done,color: Colors.green,),
                      Icon(Icons.done,color: Colors.green,),
                     
                           ],
                         ),
                       ),
                     ) 
                    ],
                  )
                

              ],
            ),
          )

        ],
      );
  }
}