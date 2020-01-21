

import 'package:leo_quizzler_app/Questions.dart';

class MockData extends Question{

  static List<Question> fetctData(){
    return [
      Question(
          questionText: 'Some cats are actually allergic to humans',
          answer: true),
      Question(
          questionText: 'You can lead a cow down stairs but not up stairs.',
          answer: false),
      Question(
          questionText:
              'Approximately one quarter of human bones are in the feet.',
          answer: true),
      Question(questionText: 'A slug\'s blood is green.', answer: true),
      Question(
          questionText: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
          answer: true),
      Question(
          questionText: 'It is illegal to pee in the Ocean in Portugal.',
          answer: true),
      Question(
          questionText:
              'No piece of square dry paper can be folded in half more than 7 times.',
          answer: false),
      Question(
          questionText:
              'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
          answer: true),
      Question(
          questionText:
              'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
          answer: false),
      Question(
          questionText:
              'The total surface area of two human lungs is approximately 70 square metres.',
          answer: true),
      Question(
          questionText: 'Google was originally called \"Backrub\".',
          answer: true),
      Question(
          questionText:
              'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
          answer: true),
      Question(
          questionText:
              'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
          answer: true),
    ];  }
}