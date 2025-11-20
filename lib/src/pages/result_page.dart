import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:question_survey/src/datasources/survey_question_data.dart';
import 'package:question_survey/src/routes/app_routes.dart';
import 'package:question_survey/src/shared/theme/app_color.dart';
import 'package:question_survey/src/shared/widgets/app_button.dart';
import 'package:question_survey/src/states/survey/export.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Result")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _jsonDisplay(context),
            const Spacer(),
            _backButton(context),
          ],
        ),
      ),
    );
  }

  Widget _jsonDisplay(BuildContext context) {
    final state = context.watch<SurveyBloc>().state;
    final option = SurveyQuestionData.surveyOptions
        .where((o) => o.id == state.selectedOptionId)
        .firstOrNull;

    if (option == null) {
      return Text('You haven\'t selected any option yet!');
    }

    return Text(
      jsonEncode(state.toJson(option)),
      style: const TextStyle(fontSize: 24),
    );
  }

  Widget _backButton(BuildContext context) {
    return AppButton(
      onPressed: () => context.goNamed(AppRoutes.survey.name),
      label: 'Back',
      bgColor: AppColor.primaryButtonColor,
    );
  }
}
