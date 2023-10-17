import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:questionsapp/app/questions/domain/entities/get_questions_list_entity.dart';
import 'package:questionsapp/app/questions/domain/repositories/base_repo/get_questions_list_base_repo.dart';
import 'package:questionsapp/core/base/base_use_case.dart';
import 'package:questionsapp/core/error_handler/failure.dart';

@lazySingleton
class GetQuestionListUseCase
    implements BaseUseCase<List<GetQuestionsListEntity>, NoParams> {
  final GetQuestionsListBaseRepo getquestionsbaseRepo;

  GetQuestionListUseCase({required this.getquestionsbaseRepo});
  
  @override
  Future<Either<Failure, List<GetQuestionsListEntity>>> call(NoParams params) {
 return getquestionsbaseRepo.getQuestionsList();
  }
  


}
