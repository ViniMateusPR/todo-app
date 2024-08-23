import 'package:equatable/equatable.dart';
import 'package:todo_app/utils/task_categories.dart';

class Task extends Equatable {
  final int? id;
  final String title;
  final String note;
  final String time;
  final TaskCategories category;
  final String date;

  // final TaskCategory category;
  final bool isCompleted;

  const Task(
      {this.id,
      required this.title,
      required this.note,
      required this.time,
      required this.date,
      required this.category,
      required this.isCompleted});

  @override
  List<Object?> get props {
    return [
      id!,
      title,
      note,
      time,
      date,
      isCompleted,
    ];
  }
}
