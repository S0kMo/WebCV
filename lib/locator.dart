// ignore_for_file: depend_on_referenced_packages

import 'package:get_it/get_it.dart';
import 'package:webcv/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Register your services here
  locator.registerLazySingleton(() => NavigationService());
}
