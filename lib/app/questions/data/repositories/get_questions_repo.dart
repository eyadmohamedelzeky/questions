import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:questionsapp/app/questions/data/datasources/remote_data_source/get_question_list_remote.dart';
import 'package:questionsapp/app/questions/data/mapper/get_question_mappr.dart';
import 'package:questionsapp/app/questions/domain/entities/get_questions_list_entity.dart';
import 'package:questionsapp/app/questions/domain/repositories/base_repo/get_questions_list_base_repo.dart';
import 'package:questionsapp/core/error_handler/failure.dart';

@LazySingleton(as: GetQuestionsListBaseRepo)
class GetQuestionsListRepo implements GetQuestionsListBaseRepo {
  final GetQuestionsListRemoteData getQuestionsListRemoteData;
  GetQuestionsListRepo({required this.getQuestionsListRemoteData});
  @override
  Future<Either<Failure, List<GetQuestionsListEntity>>>
      getQuestionsList() async {
    try {
      final result = await getQuestionsListRemoteData.getQuestionsList();
      return Right(GetQuestionModelMappr().convertList(result));
    } catch (e) {
      debugPrint('The Error Of Questions Coming From Repo Is $e');
      return Left(Failure(e.toString()));
    }
  }
}
