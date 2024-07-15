import 'package:mind_scribe/Authentication/cubit/auth/auth_cubit.dart';

import '../storage/shared_preferences_storage.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

setup() {
  locator
        ..registerSingleton<SharedPreferencesService>(
            SharedPreferencesService())
        //..registerSingleton<RegisterPageCubit>(RegisterPageCubit())
        ..registerSingleton<AuthCubit>(AuthCubit())
      // ..registerSingleton<LoginPageCubit>(LoginPageCubit())
      ;
}
