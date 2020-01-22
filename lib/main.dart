import 'package:flutter/material.dart';
import 'package:leo_quizzler_app/MockData.dart';
import 'package:leo_quizzler_app/Questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
void main(){
  runApp(new Quizzler());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  int length=question.length;
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
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
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

                      //  _renderButton("True", Colors.green, true, const EdgeInsets.only(left: 8.0,right: 8.0,top: 30.0,bottom: 8.0)),
                       
                       
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 40.0,bottom: 8.0),
                              child: FlatButton(
                              child: Text("True",style: TextStyle(
                                fontSize: 24.0,
                                fontWeight:FontWeight.w600,
                              ),),
                              onPressed: (){
                                 
                                  setState(() {
                                     if(true==question[count].answer){
                                    scoreTracker.add(trueIcon);
                                  }
                                  else{
                                    scoreTracker.add(falseIcon);
                                  }

              if(count == length-1){//brain of logic is here
                print('Restarted the app');
                _showAlert();
                scoreTracker.clear();
              }
              count = (count + 1)%length;
            });
                              },
                              colorBrightness: Brightness.dark,
                              color: Colors.green,
                          ),
                            ),
                        ),

                        // _renderButton("text", Colors.red,false,const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 30.0,top: 8.0) ),
                        
                        
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 40.0,top: 8.0),
                              child: FlatButton(
                              child: Text("False",style:TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w600,
                              )), 
                              onPressed: (){
                                 
                                  setState(() {
                                     if(false==question[count].answer){
                                    scoreTracker.add(trueIcon);
                                  }
                                  else{
                                    scoreTracker.add(falseIcon);
                                  }

              if(count == length-1){//brain of logic is here
                print('Restarted the app');
                _showAlert();
                scoreTracker.clear();
              }
              count = (count + 1)%length;
            });
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
                   children: scoreTracker,
                  )
                

              ],
            ),
          )

        ],
      );
  }
  Widget _renderButton(String text, Color color, bool buttonType,EdgeInsets padd) {
    return Expanded(
      child: Padding(
        padding: padd,
        child: FlatButton(
          onPressed: () {
            if (buttonType == question[count].answer)
              scoreTracker.add(trueIcon);
            else
              scoreTracker.add(falseIcon);
            setState(() {
              if(count == length-1){
                print('Restarted the app');
                _showAlert();
                scoreTracker.clear();
              }
              count = (count + 1)%length;
            });
          },
          child: Text(text),
          color: color,
        ),
      ),
    );
  }
  _showAlert(){
    Alert(
      context: context,
      type: AlertType.success,
      title: "Game Ends",
      desc: "Click Restart button to restart the game!",
      buttons: [
        DialogButton(
          child: Text(
            "Restart",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
  }
}