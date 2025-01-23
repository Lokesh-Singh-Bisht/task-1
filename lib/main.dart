import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stroll_task_1/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(
    MyApp(),
  );
}
