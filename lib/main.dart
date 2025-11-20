import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:question_survey/src/routes/app_router.dart';
import 'package:question_survey/src/states/survey/survey_bloc.dart';

void main() {
  runApp(BlocProvider(create: (_) => SurveyBloc(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AppRouter.router;

    return MaterialApp.router(routerConfig: router, title: "Survey App (Bloc)", debugShowCheckedModeBanner: false);
  }
}
