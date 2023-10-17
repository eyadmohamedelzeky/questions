import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:questionsapp/app/app.dart';
import 'package:questionsapp/app/bloc_observer.dart';
import 'package:questionsapp/app/questions/data/models/get_question_list_model.dart';
import 'package:questionsapp/core/di/di.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(GetQuestionListModelImplAdapter());
  // Open the Hive box
  await Hive.openBox<GetQuestionListModel>('questionsBox');
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Future.delayed(const Duration(milliseconds: 150));
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();
  await configureDependencies();
}
