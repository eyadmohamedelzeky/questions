// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_questions_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetQuestionsListEntity {
//  @HiveField(0)
  String get title => throw _privateConstructorUsedError; //  @HiveField(1)
  String get link => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetQuestionsListEntityCopyWith<GetQuestionsListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetQuestionsListEntityCopyWith<$Res> {
  factory $GetQuestionsListEntityCopyWith(GetQuestionsListEntity value,
          $Res Function(GetQuestionsListEntity) then) =
      _$GetQuestionsListEntityCopyWithImpl<$Res, GetQuestionsListEntity>;
  @useResult
  $Res call({String title, String link});
}

/// @nodoc
class _$GetQuestionsListEntityCopyWithImpl<$Res,
        $Val extends GetQuestionsListEntity>
    implements $GetQuestionsListEntityCopyWith<$Res> {
  _$GetQuestionsListEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$GetQuestionsListEntityImplCopyWith<$Res>
    implements $GetQuestionsListEntityCopyWith<$Res> {
  factory _$$GetQuestionsListEntityImplCopyWith(
          _$GetQuestionsListEntityImpl value,
          $Res Function(_$GetQuestionsListEntityImpl) then) =
      __$$GetQuestionsListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String link});
}

/// @nodoc
class __$$GetQuestionsListEntityImplCopyWithImpl<$Res>
    extends _$GetQuestionsListEntityCopyWithImpl<$Res,
        _$GetQuestionsListEntityImpl>
    implements _$$GetQuestionsListEntityImplCopyWith<$Res> {
  __$$GetQuestionsListEntityImplCopyWithImpl(
      _$GetQuestionsListEntityImpl _value,
      $Res Function(_$GetQuestionsListEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
  }) {
    return _then(_$GetQuestionsListEntityImpl(
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

class _$GetQuestionsListEntityImpl implements _GetQuestionsListEntity {
  const _$GetQuestionsListEntityImpl({required this.title, required this.link});

//  @HiveField(0)
  @override
  final String title;
//  @HiveField(1)
  @override
  final String link;

  @override
  String toString() {
    return 'GetQuestionsListEntity(title: $title, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetQuestionsListEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetQuestionsListEntityImplCopyWith<_$GetQuestionsListEntityImpl>
      get copyWith => __$$GetQuestionsListEntityImplCopyWithImpl<
          _$GetQuestionsListEntityImpl>(this, _$identity);
}

abstract class _GetQuestionsListEntity implements GetQuestionsListEntity {
  const factory _GetQuestionsListEntity(
      {required final String title,
      required final String link}) = _$GetQuestionsListEntityImpl;

  @override //  @HiveField(0)
  String get title;
  @override //  @HiveField(1)
  String get link;
  @override
  @JsonKey(ignore: true)
  _$$GetQuestionsListEntityImplCopyWith<_$GetQuestionsListEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
