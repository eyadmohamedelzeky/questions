import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:questionsapp/app/questions/data/models/get_question_list_model.dart';
import 'package:questionsapp/app/questions/domain/entities/get_questions_list_entity.dart';
import 'get_question_mappr.auto_mappr.dart';
@AutoMappr([
  MapType<GetQuestionListModel, GetQuestionsListEntity>(),


]) 
class GetQuestionModelMappr extends $GetQuestionModelMappr {}


