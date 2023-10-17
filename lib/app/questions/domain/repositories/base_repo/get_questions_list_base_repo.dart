import 'package:dartz/dartz.dart';
import 'package:questionsapp/app/questions/domain/entities/get_questions_list_entity.dart';
import 'package:questionsapp/core/error_handler/failure.dart';

abstract interface class GetQuestionsListBaseRepo {
  Future<Either<Failure, List<GetQuestionsListEntity>>> getQuestionsList();
}
