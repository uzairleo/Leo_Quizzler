import 'package:flutter/material.dart';
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
  var count=0;
  var trueIcon=Icon(Icons.done,color: Colors.green,);
  var falseIcon=Icon(Icons.close,color:Colors.red);
  List<Question> question=[
    Question(
      questiontext:"Tree is Living Organism",
      answer:true,
    ),
    Question(
      questiontext: "All humans are Fools",
      answer: false
    ),
    Question(
      questiontext: "We are Living Organisms",
      answer: true
    ),
    Question(
      questiontext: "developers are not Humans",
      answer: false
    ),
    Question(
      questiontext: "Human is made up of blood Cells",
      answer: true
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return quizPage();
  }
  Widget quizPage()
  {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                "Here is a question text",
                style: TextStyle(
                  fontSize: 24.0,
                  // fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
            ),
          ),),
          // SizedBox(height:30.0),

          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                // SizedBox(height: 30.0,),
                Expanded(
                  flex: 0,
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: <Widget>[
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 13.0,right: 13.0,top: 70.0,bottom: 10.0,),
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
                              padding: const EdgeInsets.only(left: 13.0,right: 13.0,bottom: 70.0,top: 10.0),
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