import 'package:question_survey/src/models/survey_option.dart';
import 'package:question_survey/src/models/survey_question.dart';

class SurveyQuestionData {
  static SurveyQuestion surveyQuestionA = SurveyQuestion(id: 1, question: 'What would you do?', options: [1, 2, 3, 4]);
  static List<SurveyOption> surveyOptions = [
    SurveyOption(id: 1, name: 'Eat'),
    SurveyOption(id: 2, name: 'Sleep'),
    SurveyOption(id: 3, name: 'Play'),
    SurveyOption(id: 4, name: 'Read'),
  ];

  //to implement multiple questions
  static List<SurveyQuestion> surveyQuestions = [];
}
