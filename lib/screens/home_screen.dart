import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:todo_app/data/data.dart';
import 'package:todo_app/routes/route_location.dart';
import 'package:todo_app/utils/task_categories.dart';
import 'package:todo_app/utils/utils.dart';
import 'package:todo_app/widgets/display_white_text.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/widgets/widgets.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static HomeScreen builder(BuildContext context, GoRouterState state) =>
      const HomeScreen();
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    final now = DateTime.now();
    final formattedDate =
        "${now.toLocal().day}/${now.toLocal().month}/${now.toLocal().year}";

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DisplayWhiteText(
                        text: formattedDate, // Exibe a data atual formatada
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                      const DisplayWhiteText(
                        text: "My Todo List",
                        fontSize: 40,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const DisplayListOfTasks(
                    tasks: [
                      Task(
                          title: 'title 1',
                          note: 'note',
                          time: '14:26',
                          date: 'Aug, 09',
                          isCompleted: false,
                          category: TaskCategories.health),
                      Task(
                          title: 'title 2',
                          note: 'note',
                          time: '15:26',
                          date: 'Aug, 09',
                          isCompleted: false,
                          category: TaskCategories.education),
                    ],
                  ),
                  const Gap(20),
                  Text(
                    'Completed',
                    style: context.textTheme.headlineMedium,
                  ),
                  const Gap(20),
                  const DisplayListOfTasks(
                    tasks: [
                      Task(
                          title: 'title 1',
                          note: '',
                          time: '14:26',
                          date: 'Aug, 09',
                          isCompleted: true,
                          category: TaskCategories.personal),
                      Task(
                          title: 'title 2',
                          note: '',
                          time: '15:26',
                          date: 'Aug, 09',
                          isCompleted: true,
                          category: TaskCategories.work),
                    ],
                    isCompletedTasks: true,
                  ),
                  const Gap(20),
                  ElevatedButton(
                    onPressed: () => context.push(RouteLocation.createTask),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: DisplayWhiteText(text: 'Add New Task'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
