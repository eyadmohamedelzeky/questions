import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_question_list_model.freezed.dart';
part 'get_question_list_model.g.dart';

@freezed
abstract class GetQuestionListModel with _$GetQuestionListModel {
  @HiveType(typeId: 0)
  const factory GetQuestionListModel({
    @HiveField(0) required String title,
    @HiveField(1) required String link,
  }) = _GetQuestionListModel;

  factory GetQuestionListModel.fromJson(Map<String, dynamic> json) =>
      _$GetQuestionListModelFromJson(json);
}
