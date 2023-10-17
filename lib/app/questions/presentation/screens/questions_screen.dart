import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:questionsapp/app/questions/presentation/cubit/questions_cubit.dart';
import 'package:questionsapp/app/questions/presentation/cubit/questions_state.dart';
import 'package:questionsapp/app/questions/presentation/widgets/questions.dart';
import 'package:questionsapp/core/di/di.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          'Questions',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocProvider<QuestionsCubit>(
        create: (context) => di<QuestionsCubit>()..getQuestionsList(),
        child: BlocBuilder<QuestionsCubit, QuestionsState>(
          builder: (context, state) {
            if (state is QuestionsLoading) {
              return Center(
                child: CircularProgressIndicator(
                  color: Colors.green,
                ),
              );
            } else if (state is QuestionsSccuess) {
              final question = state.getQuestionsListEntity;

              // Handle offline scenario if there's no internet connection
              return OfflineQuestionList(question: question);
            } else {
              return SizedBox();
            }
          },
        ),
      ),
    );
  }
}