import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'cubits/addnote_cubit.dart';
import 'models/note-model.dart';
import 'views/home page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter()); // تسجيل الكلاس
  await Hive.openBox<NoteModel>('notes');  // فتح الصندوق المخصص للملاحظات
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddnoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(
        ),

        home:homepage(),

        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
