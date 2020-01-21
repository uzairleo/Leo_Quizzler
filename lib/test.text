import 'package:flutter/material.dart';
import 'models/question.dart';
import 'mocks/mockdata.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizller());

class Quizller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var scoreTracker = List<Icon>();
  var trueIcon = Icon(Icons.done, color: Colors.green);
  var falseIcon = Icon(Icons.close, color: Colors.red);
  static List<Question> questions = MockQuestions.fetchQuestions();
  int count = 0;
  int length = questions.length;

  @override
  Widget build(BuildContext context) {
    return _renderPage();
  }

  Widget _renderPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _renderText('Question Text here'),
        _renderButton('True', Colors.green, true),
        _renderButton('False', Colors.red, false),
        _renderIcons(),
      ],
    );
  }

  Widget _renderText(String text) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            questions[count].questionText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderButton(String text, Color color, bool buttonType) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FlatButton(
          onPressed: () {
            if (buttonType == questions[count].answer)
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
      title: "Game End",
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

  _renderIcons(){
    return Row(
      children: scoreTracker,
    );
  }
}