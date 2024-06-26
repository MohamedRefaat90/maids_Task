import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:notes/features/home/presentation/cubit/add_task/add_task_cubit.dart';

import 'note_field.dart';

class NoteForm extends StatefulWidget {
  final GlobalKey<FormState> formkey;

  const NoteForm({Key? key, required this.formkey}) : super(key: key);

  @override
  _NoteFormState createState() => _NoteFormState();
}

class _NoteFormState extends State<NoteForm> {
  String? noteTitle, noteDescription;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formkey,
        child: Column(
          children: [
            NoteFiled(
              title: AppLocalizations.of(context)!.title,
              maxLine: 1,
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return AppLocalizations.of(context)!.field_empty;
                } else {
                  return null;
                }
              },
              onSaved: (value) {
                BlocProvider.of<AddTaskCubit>(context).title = value!;
              },
            ),
            const SizedBox(height: 20),
            NoteFiled(
              title: AppLocalizations.of(context)!.description,
              minLine: 3,
              maxLine: 5,
              onSaved: (value) {
                BlocProvider.of<AddTaskCubit>(context).description = value!;
              },
            ),
          ],
        ));
  }
}
