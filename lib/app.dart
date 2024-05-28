import 'package:colorful_baloons/bloc/baloon_bloc.dart';
import 'package:colorful_baloons/home_page.dart';
import 'package:colorful_baloons/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BaloonBloc>(
      create: (context) => BaloonBloc(),
      child: Builder(builder: (context) {
        return MaterialApp(
          theme: ligthTheme(),
          home: HomePage(),
        );
      }),
    );
  }
}
