// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../../app/questions/data/datasources/remote_data_source/get_question_list_remote.dart'
    as _i8;
import '../../app/questions/data/datasources/remote_data_source/get_questions_list_remote_impl.dart'
    as _i9;
import '../../app/questions/data/repositories/get_questions_repo.dart' as _i11;
import '../../app/questions/domain/repositories/base_repo/get_questions_list_base_repo.dart'
    as _i10;
import '../../app/questions/domain/usecases/get_question_list_use_case.dart'
    as _i12;
import '../../app/questions/presentation/cubit/questions_cubit.dart' as _i13;
import '../api/api_consumer.dart' as _i6;
import '../api/app_interceptor.dart' as _i3;
import '../api/dio_consumer.dart' as _i7;
import 'register_module.dart' as _i14;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.AppInterceptors>(() => _i3.AppInterceptors());
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i6.ApiConsumer>(
        () => _i7.DioConsumer(client: gh<_i4.Dio>()));
    gh.lazySingleton<_i8.GetQuestionsListRemoteData>(() =>
        _i9.GetQuestionListRemoteDataImpl(consumer: gh<_i6.ApiConsumer>()));
    gh.lazySingleton<_i10.GetQuestionsListBaseRepo>(() =>
        _i11.GetQuestionsListRepo(
            getQuestionsListRemoteData: gh<_i8.GetQuestionsListRemoteData>()));
    gh.lazySingleton<_i12.GetQuestionListUseCase>(() =>
        _i12.GetQuestionListUseCase(
            getquestionsbaseRepo: gh<_i10.GetQuestionsListBaseRepo>()));
    gh.factory<_i13.QuestionsCubit>(
        () => _i13.QuestionsCubit(gh<_i12.GetQuestionListUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
