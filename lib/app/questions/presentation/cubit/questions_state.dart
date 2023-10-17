
import 'package:questionsapp/app/questions/domain/entities/get_questions_list_entity.dart';

abstract class QuestionsState {
  const QuestionsState();
}

class QuestionsInitial extends QuestionsState {}

class QuestionsLoading extends QuestionsState {}

class QuestionsSccuess extends QuestionsState {
  final  List<GetQuestionsListEntity> getQuestionsListEntity;

  QuestionsSccuess({required this.getQuestionsListEntity});
}

class QuestionsFailure extends QuestionsState {
  final String mesg;

  QuestionsFailure({required this.mesg});
}
