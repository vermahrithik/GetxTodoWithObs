import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:todowithobs/src/models/taskModel.dart';

class TaskController extends GetxController{
  var tasks = <TaskModel>[].obs;

  TextEditingController taskNameController = TextEditingController();
  TextEditingController taskDescriptionController = TextEditingController();

  String _x = "Hrithik";
  String get x => _x;

  set x(String name) {
    _x = name;
    update();
  }

  late TaskModel taskModel;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    taskNameController.dispose();
    taskDescriptionController.dispose();
  }

  void addTask(String taskName, String taskDescription) {
    taskModel = TaskModel(taskName: taskName, taskDescription: taskDescription);
    tasks.add(taskModel);
    // update();
  }

  removeTask(int index) {
    tasks.removeAt(index);
    // update();
  }

  editTask(int index,String taskName,String taskDesc) {
    tasks[index] = TaskModel(taskName: taskName, taskDescription: taskDesc);
    // update();
  }

}