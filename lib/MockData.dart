

import 'package:leo_quizzler_app/Questions.dart';

class MockData extends Question{

  static List<Question> fetctData(){
    return [
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
  }
}