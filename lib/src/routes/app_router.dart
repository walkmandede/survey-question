import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:question_survey/src/routes/app_routes.dart';
import 'package:question_survey/src/states/survey/survey_bloc.dart';

class AppRouter {
  static final router = GoRouter(
    redirect: (context, state) {
      final quiz = context.read<SurveyBloc>().state;

      if (state.matchedLocation == AppRoutes.review.path && !quiz.answered) {
        //unless an option selected, redire to survey page
        return AppRoutes.survey.path;
      }

      return null;
    },
    initialLocation: AppRoutes.survey.path,
    routes: AppRoutes.values
        .map(
          (r) => GoRoute(
            path: r.path,
            name: r.name,
            builder: (context, state) => r.page,
          ),
        )
        .toList(),
  );
}
