import 'package:question_survey/src/models/survey_option.dart';

class SurveyState {
  final bool answered;
  final int? selectedOptionId;
  final DateTime? selectedAt;

  const SurveyState({this.answered = false, this.selectedOptionId, this.selectedAt});

  SurveyState copyWith({bool? answered, int? selectedOptionId, DateTime? selectedAt}) {
    return SurveyState(
      answered: answered ?? this.answered,
      selectedOptionId: selectedOptionId ?? this.selectedOptionId,
      selectedAt: selectedAt ?? this.selectedAt,
    );
  }

  Map<String, dynamic> toJson(SurveyOption option) {
    return {'behaviour': option.name, 'timestamp': selectedAt?.millisecondsSinceEpoch};
  }
}
