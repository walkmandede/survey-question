abstract class SurveyEvent {}

class SelectAnswerEvent extends SurveyEvent {
  final int optionId;
  SelectAnswerEvent(this.optionId);
}
