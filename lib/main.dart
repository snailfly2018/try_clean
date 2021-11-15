import 'package:flutter/material.dart';
import 'package:try_clean/presentation/pages/number_trivia_page.dart';

import 'injection_container.dart' as di;

Future<void> main() async {
  /* ENSURE ASYNC WILL NOT GENERATE RUNTIME ERROR */
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Trivia',
      theme: ThemeData(
        primaryColor: Colors.green.shade800,
        // accentColor: Colors.green.shade600,
      ),
      home: const NumberTriviaPage(),
    );
  }
}
