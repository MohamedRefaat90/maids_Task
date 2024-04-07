import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/core/di/di.dart';
import 'package:notes/core/helpers/constants.dart';

import '../../features/home/data/models/task_model.dart';
import 'blocObserver.dart';

initServices() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = myBlocObserver();
  await Hive.initFlutter();
  initGetIt();
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>(kTasksBox);
}
