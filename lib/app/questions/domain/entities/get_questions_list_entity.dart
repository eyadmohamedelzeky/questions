import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_questions_list_entity.freezed.dart';
//part 'get_questions_list_entity.g.dart';
@Freezed(fromJson: false, toJson: false)
//  @HiveType(typeId: 0)
class GetQuestionsListEntity with _$GetQuestionsListEntity {
  const factory GetQuestionsListEntity({
    //  @HiveField(0)
    required String title,
    //  @HiveField(1)
    required String link,
  }) = _GetQuestionsListEntity;
}
