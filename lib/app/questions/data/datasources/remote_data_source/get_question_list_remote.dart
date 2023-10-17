import 'package:questionsapp/app/questions/data/models/get_question_list_model.dart';

abstract interface class GetQuestionsListRemoteData {
  Future<List<GetQuestionListModel>> getQuestionsList();
}
