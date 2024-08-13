import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todowithobs/src/controllers/getxController.dart';
import 'package:todowithobs/src/views/screens/todowithobs.dart';

void main() {
  Get.put(TaskController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amberAccent),
        useMaterial3: true,
      ),
      home: TodoObs(),
    );
  }
}

