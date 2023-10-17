import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:questionsapp/app/questions/domain/usecases/get_question_list_use_case.dart';
import 'package:questionsapp/app/questions/presentation/cubit/questions_state.dart';
import 'package:questionsapp/core/base/base_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@injectable
class QuestionsCubit extends Cubit<QuestionsState> {
  QuestionsCubit(this.getQuestionListUseCase) : super(QuestionsInitial());
  final GetQuestionListUseCase getQuestionListUseCase;
  Future<void> getQuestionsList() async {
    emit(QuestionsLoading());
    final result = await getQuestionListUseCase.call(NoParams());
    result.fold((l) {
      debugPrint('The Error Coming From Questions Cubit Is ${l.message}');
      emit(QuestionsFailure(mesg: l.message.toString()));
    }, (r) => emit(QuestionsSccuess(getQuestionsListEntity: r)));
  }
}
