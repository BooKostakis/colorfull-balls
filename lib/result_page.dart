import 'package:colorful_baloon_bloc/bloc/baloon_bloc.dart';
import 'package:flutter/material.dart';
import 'package:colorful_baloon_bloc/rainbow_stack.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(0, 58, 106, 1)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Хочу еще!', style: TextStyle(color: Colors.white))),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 5, 46, 65),
        title: const Text('Вот что получилось!',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
      body: BlocBuilder<BaloonBloc, BaloonState>(
        builder: (context, baloonState) => baloonState.maybeMap(
          orElse: () => Text('Ошибка, данных нет!'),
          sucsess: (baloonStateSucsess) => ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: baloonStateSucsess.ballsQuantity, // Количество виджетов
            itemBuilder: (context, index) {
              return Wrap(
                children: List.generate(
                  1, // Количество виджетов в строке
                  (index) => Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        RainbowStack(
                          maxWidth: 280,
                          maxHeigth: 280,
                          maxBorderRadius: 200,
                          colorsQuantity: baloonStateSucsess.colorQuantity,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
