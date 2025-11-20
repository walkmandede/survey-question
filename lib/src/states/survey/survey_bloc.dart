import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:question_survey/src/states/survey/survey_event.dart';
import 'package:question_survey/src/states/survey/survey_state.dart';

class SurveyBloc extends Bloc<SurveyEvent, SurveyState> {
  SurveyBloc() : super(const SurveyState()) {
    on<SelectAnswerEvent>((event, emit) {
      emit(state.copyWith(answered: true, selectedOptionId: event.optionId, selectedAt: DateTime.now()));
    });
  }
}
