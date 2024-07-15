import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:mind_scribe/service/locator.dart';
import 'package:mind_scribe/storage/shared_preferences_storage.dart';
import 'package:mind_scribe/utils/fire_key.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final SharedPreferencesService _sharedPreferencesService =
      locator<SharedPreferencesService>();

  init() async {
    final uid = await _sharedPreferencesService.getPreference(FireKey.uid);

    if (uid != null) {
      emit(AuthLogin());
    } else {
      emit(AuthNotLogin());
    }
  }
}
