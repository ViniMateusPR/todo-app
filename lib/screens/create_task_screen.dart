import 'package:flutter/material.dart';
import 'package:todo_app/widgets/display_white_text.dart';
import 'package:go_router/go_router.dart';

class CreateTaskScreen extends StatelessWidget {
  static CreateTaskScreen builder(BuildContext context, GoRouterState state) =>
      const CreateTaskScreen();
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DisplayWhiteText(
          text: 'Add New Task',
        ),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text('Task Title'),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Task Title',
              ),
              onChanged: (value) {},
            )
          ],
        ),
      ),
    );
  }
}
