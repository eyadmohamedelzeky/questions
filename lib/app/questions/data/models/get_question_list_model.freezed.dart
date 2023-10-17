// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_question_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetQuestionListModel _$GetQuestionListModelFromJson(Map<String, dynamic> json) {
  return _GetQuestionListModel.fromJson(json);
}

/// @nodoc
mixin _$GetQuestionListModel {
  @HiveField(0)
  String get title => throw _privateConstructorUsedError;
  @HiveField(1)
  String get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetQuestionListModelCopyWith<GetQuestionListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetQuestionListModelCopyWith<$Res> {
  factory $GetQuestionListModelCopyWith(GetQuestionListModel value,
          $Res Function(GetQuestionListModel) then) =
      _$GetQuestionListModelCopyWithImpl<$Res, GetQuestionListModel>;
  @useResult
  $Res call({@HiveField(0) String title, @HiveField(1) String link});
}

/// @nodoc
class _$GetQuestionListModelCopyWithImpl<$Res,
        $Val extends GetQuestionListModel>
    implements $GetQuestionListModelCopyWith<$Res> {
  _$GetQuestionListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetQuestionListModelImplCopyWith<$Res>
    implements $GetQuestionListModelCopyWith<$Res> {
  factory _$$GetQuestionListModelImplCopyWith(_$GetQuestionListModelImpl value,
          $Res Function(_$GetQuestionListModelImpl) then) =
      __$$GetQuestionListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String title, @HiveField(1) String link});
}

/// @nodoc
class __$$GetQuestionListModelImplCopyWithImpl<$Res>
    extends _$GetQuestionListModelCopyWithImpl<$Res, _$GetQuestionListModelImpl>
    implements _$$GetQuestionListModelImplCopyWith<$Res> {
  __$$GetQuestionListModelImplCopyWithImpl(_$GetQuestionListModelImpl _value,
      $Res Function(_$GetQuestionListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
  }) {
    return _then(_$GetQuestionListModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$GetQuestionListModelImpl implements _GetQuestionListModel {
  const _$GetQuestionListModelImpl(
      {@HiveField(0) required this.title, @HiveField(1) required this.link});

  factory _$GetQuestionListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetQuestionListModelImplFromJson(json);

  @override
  @HiveField(0)
  final String title;
  @override
  @HiveField(1)
  final String link;

  @override
  String toString() {
    return 'GetQuestionListModel(title: $title, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQuestionListModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetQuestionListModelImplCopyWith<_$GetQuestionListModelImpl>
      get copyWith =>
          __$$GetQuestionListModelImplCopyWithImpl<_$GetQuestionListModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetQuestionListModelImplToJson(
      this,
    );
  }
}

abstract class _GetQuestionListModel implements GetQuestionListModel {
  const factory _GetQuestionListModel(
      {@HiveField(0) required final String title,
      @HiveField(1) required final String link}) = _$GetQuestionListModelImpl;

  factory _GetQuestionListModel.fromJson(Map<String, dynamic> json) =
      _$GetQuestionListModelImpl.fromJson;

  @override
  @HiveField(0)
  String get title;
  @override
  @HiveField(1)
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$GetQuestionListModelImplCopyWith<_$GetQuestionListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
