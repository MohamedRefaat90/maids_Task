import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:notes/core/helpers/initServices.dart';
import 'package:notes/core/theming/app_theme.dart';

import 'core/routing/app_routing.dart';
import 'features/home/presentation/cubit/add_task/add_task_cubit.dart';
import 'features/home/presentation/cubit/task_view/tasks_view_cubit.dart';

void main() async {
  initServices();

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TaskViewCubit()..fetchAllTasks()),
        BlocProvider(create: (context) => AddTaskCubit()),
      ],
      child: BlocBuilder<TaskViewCubit, TasksViewState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.mainTheme(context),
            routerConfig: AppRouter.router,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          );
        },
      ),
    );
  }
}
