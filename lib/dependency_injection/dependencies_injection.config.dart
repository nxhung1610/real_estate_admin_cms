// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i22;

import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:dio/dio.dart' as _i6;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:real_estate_admin_cms/core/data/auth/auth_repository.dart'
    as _i14;
import 'package:real_estate_admin_cms/core/data/auth/i_auth_repository.dart'
    as _i13;
import 'package:real_estate_admin_cms/core/data/connectivity/connectivity_repository.dart'
    as _i18;
import 'package:real_estate_admin_cms/core/data/connectivity/i_connectivity_repository.dart'
    as _i17;
import 'package:real_estate_admin_cms/core/data_source/local/auth/auth_lcoal_data_source.dart'
    as _i12;
import 'package:real_estate_admin_cms/core/data_source/local/auth/i_auth_local_data_source.dart'
    as _i11;
import 'package:real_estate_admin_cms/core/data_source/local/connectivity/connectivity_datasource.dart'
    as _i16;
import 'package:real_estate_admin_cms/core/data_source/local/connectivity/i_connectivity_datasource.dart'
    as _i15;
import 'package:real_estate_admin_cms/core/data_source/network/api_service.dart'
    as _i8;
import 'package:real_estate_admin_cms/core/data_source/network/auth/auth_datasource.dart'
    as _i10;
import 'package:real_estate_admin_cms/core/data_source/network/auth/i_auth_datasource.dart'
    as _i9;
import 'package:real_estate_admin_cms/core/data_source/network/common/interceptor/auth_interceptor.dart'
    as _i21;
import 'package:real_estate_admin_cms/features/app/application/app_bloc.dart'
    as _i3;
import 'package:real_estate_admin_cms/features/auth/application/auth_bloc.dart'
    as _i4;
import 'package:real_estate_admin_cms/features/auth/features/login/application/login_bloc.dart'
    as _i19;
import 'package:real_estate_admin_cms/features/connectivity/application/connectivity_bloc.dart'
    as _i23;
import 'package:shared_preferences/shared_preferences.dart' as _i20;

import '../core/data_source/module/local_module.dart' as _i24;
import '../core/data_source/module/network_module.dart' as _i25;
import '../core/data_source/module/thirt_module.dart'
    as _i26; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
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
    final thirtModule = _$ThirtModule();
    final networkModule = _$NetworkModule();
    final localModule = _$LocalModule();
    gh.factory<_i3.AppBloc>(() => _i3.AppBloc());
    gh.factory<_i4.AuthBloc>(() => _i4.AuthBloc());
    gh.lazySingleton<_i5.Connectivity>(() => thirtModule.connectivity);
    gh.factory<_i6.Dio>(
      () => networkModule.dioAuth,
      instanceName: 'authDio',
    );
    gh.factory<_i6.Dio>(
      () => networkModule.dioDefault,
      instanceName: 'defaultDio',
    );
    gh.lazySingleton<_i7.FlutterSecureStorage>(() => localModule.secureStorage);
    gh.lazySingleton<_i8.IApiService>(
      () => _i8.AuthApiService(gh<_i6.Dio>(instanceName: 'authDio')),
      instanceName: 'AuthApiService',
    );
    gh.lazySingleton<_i8.IApiService>(
      () => _i8.DefaultApiService(gh<_i6.Dio>(instanceName: 'defaultDio')),
      instanceName: 'DefaultApiService',
    );
    gh.lazySingleton<_i9.IAuthDataSource>(() => _i10.AuthDataSource(
        gh<_i8.IApiService>(instanceName: 'DefaultApiService')));
    gh.lazySingleton<_i11.IAuthLocalDataSource>(
        () => _i12.AuthLocalDataSource());
    gh.lazySingleton<_i13.IAuthRepository>(() => _i14.AuthRepository(
          gh<_i9.IAuthDataSource>(),
          gh<_i11.IAuthLocalDataSource>(),
        ));
    gh.lazySingleton<_i15.IConnectivityDataSource>(
        () => _i16.ConnectivityDataSource(gh<_i5.Connectivity>()));
    gh.lazySingleton<_i17.IConnectivityRepository>(
        () => _i18.ConnectivityRepository(gh<_i15.IConnectivityDataSource>()));
    gh.factory<_i19.LoginBloc>(
        () => _i19.LoginBloc(gh<_i13.IAuthRepository>()));
    await gh.factoryAsync<_i20.SharedPreferences>(
      () => localModule.prefs,
      preResolve: true,
    );
    gh.factory<String>(
      () => networkModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factoryParam<_i21.AuthInterceptor, _i22.VoidCallback?, dynamic>((
      onExpireToken,
      _,
    ) =>
        _i21.AuthInterceptor(
          authenticationLocalDataSource: gh<_i11.IAuthLocalDataSource>(),
          authDataSource: gh<_i9.IAuthDataSource>(),
          onExpireToken: onExpireToken,
        ));
    gh.factory<_i23.ConnectivityBloc>(
        () => _i23.ConnectivityBloc(gh<_i17.IConnectivityRepository>()));
    return this;
  }
}

class _$LocalModule extends _i24.LocalModule {}

class _$NetworkModule extends _i25.NetworkModule {}

class _$ThirtModule extends _i26.ThirtModule {}
