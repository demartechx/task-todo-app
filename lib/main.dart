import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:task_todo_app/app/data/services/storage/services.dart';
import 'app/modules/home/view.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Task Todo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
