import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'models/note-model.dart';
import 'views/home page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter()); // تسجيل الكلاس
  await Hive.openBox<NoteModel>('notes');  // فتح الصندوق المخصص للملاحظات
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
      ),

      home:homepage(),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
