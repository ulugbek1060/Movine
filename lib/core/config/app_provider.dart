import 'package:chuck_interceptor/chuck.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/services/lang_service.dart';
import 'package:movie_app/core/utils/dio_interceptor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_provider.g.dart';

@Riverpod(keepAlive: true)
Chuck chuck(ChuckRef ref) =>
    Chuck(navigatorKey: GlobalKey<NavigatorState>(), showNotification: true);

@Riverpod(keepAlive: true)
DioInterceptor dioInterceptor(DioInterceptorRef ref) => DioInterceptor();

@Riverpod(keepAlive: true)
SharedPreferences sharedPreferences(SharedPreferencesRef ref) {
  throw UnimplementedError('SharedPreferencesProvider not overridden');
}

@Riverpod(keepAlive: true)
ILangService langService(LangServiceRef ref) =>
    LangService(ref.watch(sharedPreferencesProvider));

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  final chuck = ref.watch(chuckProvider);
  final dioInterceptor = ref.watch(dioInterceptorProvider);
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3/',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );
  dio.interceptors.add(dioInterceptor);
  dio.interceptors.add(chuck.getDioInterceptor());
  return dio;
}
