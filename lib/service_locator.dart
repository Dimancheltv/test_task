import 'package:get_it/get_it.dart';

import 'models/moor_database.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<Database>(Database());
}