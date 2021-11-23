import 'package:get_it/get_it.dart';

import 'core/navigation/app_navigation.dart';

GetIt locator = GetIt.instance;

void setupLocator() async {
  locator.registerLazySingleton(() => NavigationService());
}
