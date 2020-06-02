

import 'core/services/api.dart';
import 'package:get_it/get_it.dart';

import 'core/viewmodels/home_model.dart';

GetIt locator = GetIt.I;
void setupLocator(){

  locator.registerLazySingleton(() => Api());
  locator.registerFactory(() => HomeModel());
}