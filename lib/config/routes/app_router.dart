import 'package:go_router/go_router.dart';
import 'package:questionsapp/app/questions/presentation/screens/questions_screen.dart';
import 'package:questionsapp/app/splash/splash.dart';
import 'package:questionsapp/config/routes/routes_names.dart';

final router = GoRouter(
  initialLocation: AppRoutesName.splashScreen,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: AppRoutesName.splashScreen,
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: AppRoutesName.questionsScreen,
      builder: (context, state) => QuestionScreen(),
    ),
    // GoRoute(
    //   path: AppRoutesName.questionsScreenDetails,
    //   builder: (context, state) => QuestionsScreenDetails(

    //       ),
    //),
  ],
);
