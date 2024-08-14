import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todowithobs/src/models/taskModel.dart';

class TaskController extends GetxController{
  List tasks = <TaskModel>[].obs;

  TextEditingController taskNameController = TextEditingController();
  TextEditingController taskDescriptionController = TextEditingController();

  String _x = "Hrithik";
  String get x => _x;

  set x(String name) {
    _x = name;
    update();
  }

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
    tasks.add(TaskModel(taskName: taskName, taskDescription: taskDescription));
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