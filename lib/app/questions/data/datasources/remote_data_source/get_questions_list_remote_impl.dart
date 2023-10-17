import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:questionsapp/app/questions/data/datasources/remote_data_source/get_question_list_remote.dart';
import 'package:questionsapp/app/questions/data/models/get_question_list_model.dart';
import 'package:questionsapp/core/api/api_const.dart';
import 'package:questionsapp/core/api/api_consumer.dart';

@LazySingleton(as: GetQuestionsListRemoteData)
class GetQuestionListRemoteDataImpl implements GetQuestionsListRemoteData {
  final ApiConsumer consumer;

  GetQuestionListRemoteDataImpl({required this.consumer});

  @override
  Future<List<GetQuestionListModel>> getQuestionsList() async {
    final box = await Hive.openBox<GetQuestionListModel>('questionsBox');

    // Check for internet connectivity
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.none) {
      if (box.isNotEmpty) {
        // Return cached data if there's no internet connection
        return box.values.toList();
      } else {
        // Handle the case when there's no cached data
        debugPrint('No cached data available');
        return [];
      }
    }

    try {
      final response = await consumer.get(path: ApiConst.QuestionsList);
      var responseJson = response['items'];

      // Convert JSON response to List<GetQuestionListModel>
      List<GetQuestionListModel> cachedData = (responseJson as List)
          .map((item) => GetQuestionListModel.fromJson(item as Map<String, dynamic>))
          .toList();

      // Save the data to Hive for future use
      await box.addAll(cachedData); // Add 'await' here

      return cachedData;
    } catch (e) {
      debugPrint('The Error Of Questions Coming From Remote Data Source Is $e');
      rethrow;
    } finally {
      await box.close(); // Close the box when done
    }
  }
}
