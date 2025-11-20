import 'package:flutter/material.dart';
import 'package:question_survey/src/pages/result_page.dart';
import 'package:question_survey/src/pages/survey_page.dart';

enum AppRoutes {
  survey(name: 'survey', path: '/survey', page: SurveyPage()),
  review(name: 'review', path: '/review', page: ResultPage());

  final String name;
  final String path;
  final Widget page;
  const AppRoutes({required this.name, required this.path, required this.page});
}
