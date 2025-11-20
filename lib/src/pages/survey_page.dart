import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:question_survey/src/datasources/survey_question_data.dart';
import 'package:question_survey/src/routes/app_routes.dart';
import 'package:question_survey/src/shared/theme/app_color.dart';
import 'package:question_survey/src/shared/widgets/app_button.dart';
import '../states/survey/export.dart';

class SurveyPage extends StatelessWidget {
  const SurveyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final surveyQuestionA = SurveyQuestionData.surveyQuestionA;

    return Scaffold(
      appBar: AppBar(title: Text("Card: ${surveyQuestionA.id}")),
      body: BlocBuilder<SurveyBloc, SurveyState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Text(
                  surveyQuestionA.question,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemCount: surveyQuestionA.options.length,
                    itemBuilder: (context, index) {
                      final option = surveyQuestionA.options[index];
                      return _surveyOption(context, option);
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 8),
                  ),
                ),
                _nextButton(context),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _surveyOption(BuildContext context, int surveyOptionId) {
    final surveyOption = SurveyQuestionData.surveyOptions
        .where((o) => o.id == surveyOptionId)
        .firstOrNull;
    if (surveyOption == null) {
      return const SizedBox.shrink();
    }

    final bloc = context.read<SurveyBloc>();
    final isSelected = bloc.state.selectedOptionId == surveyOptionId;

    return AppButton(
      onPressed: () => bloc.add(SelectAnswerEvent(surveyOptionId)),
      label: surveyOption.name,
      bgColor: isSelected
          ? AppColor.selectedButtonColor
          : AppColor.unselectedButtonColor,
    );
  }

  Widget _nextButton(BuildContext context) {
    final bloc = context.read<SurveyBloc>();

    return AppButton(
      onPressed: bloc.state.answered
          ? () => context.goNamed(AppRoutes.review.name)
          : null,
      label: 'Next',
      bgColor: AppColor.primaryButtonColor,
    );
  }
}
