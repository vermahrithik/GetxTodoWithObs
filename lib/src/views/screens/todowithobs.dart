import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:todowithobs/src/controllers/getxController.dart';

class TodoObs extends StatelessWidget {
  TodoObs({super.key});

  final taskController = Get.find<TaskController>();
  final taskNameController = TextEditingController();

  final taskDescriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(text: 'Todo', style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: 6
              ),),
              WidgetSpan(
                child: Transform.translate(
                  offset: const Offset(-2, 3),
                  child: Text(
                    'Obx',
                    textScaleFactor: 0.7,
                      style: TextStyle(
                          letterSpacing: 2,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                      )
                  )
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      // color: Colors.amberAccent,
      child: Center(
        child: Container(
          width: 350,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Obx(()=>ListView.builder(
                  itemCount: taskController.tasks.length,
                  itemBuilder: (context, index) {
                    final task = taskController.tasks[index];
                    return InkWell(
                      /// Edit Task Details :
                      onTap: () {
                        taskNameController.text =
                        taskController.tasks[index].taskName!;
                        taskDescriptionController.text =
                        taskController
                            .tasks[index].taskDescription!;
                        Get.dialog(
                          Dialog(
                            // backgroundColor: Color(0xffedeae7),
                            shadowColor: Colors.black,
                            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              height: 250,
                              width: 250,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius:
                                  BorderRadius.circular(10)),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Edit Task',
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight:
                                          FontWeight.w600),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 230,
                                      margin:
                                      const EdgeInsets.symmetric(
                                          horizontal: 0,
                                          vertical: 4),
                                      child: TextField(
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.indigo,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        cursorColor:
                                        Colors.indigo,
                                        controller:
                                        taskNameController,
                                        decoration: InputDecoration(
                                          contentPadding:
                                          const EdgeInsets.symmetric(vertical: 0.0,horizontal: 14.0),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .indigo.shade300,
                                            ),
                                          ),
                                          enabledBorder:
                                          OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(
                                                8),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .indigo.shade300,
                                            ),
                                          ),
                                          focusedBorder:
                                          OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(
                                                8),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .indigo.shade500,
                                            ),
                                          ),
                                          fillColor:
                                          Colors.amberAccent,
                                          filled: true,
                                          hintText: 'Enter Task Name',
                                          hintStyle: TextStyle(
                                            color: Colors
                                                .indigo.withOpacity(0.5),
                                            fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 230,
                                      margin:
                                      const EdgeInsets.symmetric(
                                          horizontal: 0,
                                          vertical: 4),
                                      child: TextField(
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.indigo,
                                          fontWeight: FontWeight.bold
                                        ),
                                        cursorColor:
                                        Colors.indigo,
                                        controller:
                                        taskDescriptionController,
                                        decoration: InputDecoration(
                                          contentPadding:
                                          const EdgeInsets
                                              .symmetric(
                                              vertical: 0.0,
                                              horizontal: 14.0),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(
                                                8),
                                            borderSide: BorderSide(
                                              color: Colors.indigo.shade300
                                            )
                                          ),
                                          enabledBorder:
                                          OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(
                                                8),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .indigo.shade300,
                                            ),
                                          ),
                                          focusedBorder:
                                          OutlineInputBorder(
                                            borderRadius:
                                            BorderRadius.circular(
                                                8),
                                            borderSide: BorderSide(
                                              color: Colors
                                                  .indigo.shade500,
                                            ),
                                          ),
                                          fillColor:
                                          Colors.amberAccent,
                                          filled: true,
                                          hintText:
                                          'Enter Task Description',
                                          hintStyle: TextStyle(
                                            color: Colors
                                                .indigo.withOpacity(0.5),
                                            fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Get.back();
                                          },
                                          style: TextButton.styleFrom(
                                              shape:
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(
                                                      8)),
                                              padding:
                                              const EdgeInsets
                                                  .symmetric(
                                                  vertical: 0,
                                                  horizontal:
                                                  16)),
                                          child: Text('Cancel',
                                              style: TextStyle(
                                                  color: Colors
                                                      .white,
                                                  fontWeight:
                                                  FontWeight
                                                      .w600)),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            if(taskNameController.text.toString()=="" || taskDescriptionController.text.toString()==""){
                                              Get.back();
                                              Get.snackbar('task edit message', 'adding task details is mandatory to update!',backgroundColor: Colors.red.withOpacity(0.8),barBlur: 4,colorText: Colors.white,boxShadows: [BoxShadow(color: Colors.white.withOpacity(0.5),offset: Offset(-2,-2),blurRadius: 4,spreadRadius: 1),BoxShadow(color: Colors.grey.withOpacity(0.5),offset: Offset(2,2),blurRadius: 4,spreadRadius: 1)]);
                                              print('adding both task details is mandatory to update!');
                                            }else{
                                              Get.back();
                                              taskController.editTask(index,taskNameController.text,taskDescriptionController.text);
                                              Get.snackbar('task edit message', 'task updated successfully!',backgroundColor: Colors.amberAccent.withOpacity(0.8),barBlur: 4,colorText: Colors.white,boxShadows: [BoxShadow(color: Colors.white.withOpacity(0.5),offset: Offset(-2,-2),blurRadius: 4,spreadRadius: 1),BoxShadow(color: Colors.grey.withOpacity(0.5),offset: Offset(2,2),blurRadius: 4,spreadRadius: 1)]);
                                              print('${taskController.tasks[index].taskName} \n${taskController.tasks[index].taskDescription}');
                                            }
                                            // print('${taskController.tasks[index].taskName}');
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors
                                                  .indigo,
                                              shape:
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(
                                                      8)),
                                              padding:
                                              const EdgeInsets
                                                  .symmetric(
                                                  vertical: 0,
                                                  horizontal:
                                                  16)),
                                          child: const Text('Update',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight:
                                                  FontWeight
                                                      .w600)),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      /// Delete Task :
                      onLongPress: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.indigo,
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 150,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    // color: Colors.indigo,
                                    borderRadius:
                                    BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Delete Task',
                                      style: TextStyle(
                                          color: Colors.amberAccent,
                                          fontSize: 18,
                                          fontWeight:
                                          FontWeight.w800),
                                    ),
                                    Text(
                                      'Are you sure you want to delete task ?',
                                      style: TextStyle(
                                          color: Colors.grey.shade300,
                                          fontSize: 16,
                                          fontWeight:
                                          FontWeight.w600,
                                        letterSpacing: 2
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child: Text('Cancel',
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          style: TextButton.styleFrom(
                                              shape:
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(
                                                      8)),
                                              padding:
                                              const EdgeInsets
                                                  .symmetric(
                                                  vertical: 0,
                                                  horizontal:
                                                  16)),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            taskController.removeTask(index);
                                            print('task deleted successfully!');
                                            Get.back();
                                            Get.snackbar('task delete message', 'task deleted successfully!',backgroundColor: Colors.green.withOpacity(0.8),barBlur: 4,colorText: Colors.white,boxShadows: [BoxShadow(color: Colors.white.withOpacity(0.5),offset: Offset(-2,-2),blurRadius: 4,spreadRadius: 1),BoxShadow(color: Colors.grey.withOpacity(0.5),offset: Offset(2,2),blurRadius: 4,spreadRadius: 1)]);
                                            // print(taskController.x);
                                          },
                                          child: const Text(
                                            'Delete',
                                            style: TextStyle(
                                                color: Colors.white,fontWeight: FontWeight.bold),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                              Colors.amberAccent.shade700,
                                              shape:
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(
                                                      8)),
                                              padding:
                                              const EdgeInsets
                                                  .symmetric(
                                                  vertical: 0,
                                                  horizontal:
                                                  16)),
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      /// Task Cards :
                      child: Card(
                        color: const Color(0xffedeae7),
                        child: ListTile(
                          title: Text(
                            // taskController.tasks[index].taskName!,
                            '${taskController.tasks[index].taskName}',
                            // '${taskController.tasks[index].taskName} : name : ${taskController.x}',
                            style: const TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                          subtitle: Text(
                              taskController
                                  .tasks[index].taskDescription!,
                              style: const TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14)),
                        ),
                        shadowColor: const Color(0xffa6a2a6),
                      ),
                    );
                  },
                )),
              )
            ],
          ),
        ),
      ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    floatingActionButton: FloatingActionButton(
        onPressed: () {
          taskNameController.clear();
          taskDescriptionController.clear();
          Get.dialog(Dialog(
            // backgroundColor: Color(0xffedeae7),
            shadowColor: Colors.black,
            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              height: 230,
              width: 250,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(16)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Add Task',
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 50,
                      width: 240,
                      // color : Colors.amberAccent,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 4),
                      child: TextField(
                        cursorColor: Colors.indigo,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo
                        ),
                        decoration: InputDecoration(
                            hintText: 'Enter Task Name',
                            hintStyle: TextStyle(
                              color: Colors.indigo.withOpacity(0.5),
                              fontWeight: FontWeight.w400
                            ),
                            fillColor: Colors.amberAccent,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.indigo.shade300,
                                  width: 1.5,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.indigo.shade500,
                                  width: 1.5,
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.indigo.shade300,
                                  width: 1,
                                )),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                          // fillColor: Colors.amberAccent
                        ),
                        controller: taskNameController,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 240,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 4),
                      child: TextField(
                        style: TextStyle(
                         color: Colors.indigo,
                          fontWeight: FontWeight.bold
                        ),
                        cursorColor: Colors.indigo,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.amberAccent,
                            hintText: 'Enter Task Description',
                            hintStyle: TextStyle(
                              color: Colors.indigo.withOpacity(0.5),
                              fontWeight: FontWeight.w400
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.indigo.shade300,
                                  width: 1.5,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.indigo.shade500,
                                  width: 1.5,
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.indigo.shade300,
                                  width: 1,
                                )),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 0)),
                        controller: taskDescriptionController,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: Text('Cancel',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800)),
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 16)),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if(taskNameController.text.toString()=="" || taskDescriptionController.text.toString()==""){
                              Get.back();
                              Get.snackbar(
                                'task add message',
                                'task details are mandatory to add task',
                                backgroundColor: Colors.red.withOpacity(0.8),
                                barBlur: 4,
                                colorText: Colors.white,
                                boxShadows: [BoxShadow(color: Colors.white.withOpacity(0.5),offset: Offset(-2,-2),blurRadius: 4,spreadRadius: 1),BoxShadow(color: Colors.grey.withOpacity(0.5),offset: Offset(2,2),blurRadius: 4,spreadRadius: 1)]
                              );
                              print('adding details of task is mandatory to add task to the tasklist!');
                            }else{
                              taskController.addTask(taskNameController.text, taskDescriptionController.text);
                              Get.back();
                              Get.snackbar(
                                'task add message',
                                'task added successfully!',
                                backgroundColor: Colors.indigo.withOpacity(0.8),
                                barBlur: 4,
                                colorText: Colors.amberAccent,
                                boxShadows: [BoxShadow(color: Colors.white.withOpacity(0.5),offset: Offset(-2,-2),blurRadius: 4,spreadRadius: 1),BoxShadow(color: Colors.grey.withOpacity(0.5),offset: Offset(2,2),blurRadius: 4,spreadRadius: 1)]
                              );
                              print('task name : ${taskNameController.text},\ntask description : ${taskDescriptionController.text}');
                            }
                            // print(taskController.x);
                          },
                          child: const Text('Add',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigo,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 16)),
                        ),
                        const SizedBox(
                          width: 8,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ));
          print('Floating action button clicked');
        },
      backgroundColor: Colors.grey.shade400,
      child: const Icon(Icons.add,color: Colors.indigo,size: 25,),
      ),
    );
  }
}
