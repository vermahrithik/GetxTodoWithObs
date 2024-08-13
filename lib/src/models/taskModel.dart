class TaskModel {
  String? taskName;
  String? taskDescription;

  TaskModel({required this.taskName,required this.taskDescription});

  TaskModel.fromJson(Map<String, dynamic> json) {
    taskName = json['taskName'];
    taskDescription = json['taskDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['taskName'] = this.taskName;
    data['taskDescription'] = this.taskDescription;
    return data;
  }
}
