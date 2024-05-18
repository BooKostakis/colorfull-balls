import 'package:flutter/material.dart';
import 'package:lesson_001_flutter_stack/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'lesson_005_flutter_stack',
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Разноцветные шары',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400)),
            backgroundColor: const Color.fromARGB(255, 5, 46, 65),
          ),
          body: const HomePage(),
        ));
  }
}
