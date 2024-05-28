import 'package:colorful_baloons/bloc/baloon_bloc.dart';
import 'package:colorful_baloons/rainbow_stack.dart';
import 'package:colorful_baloons/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CircleResult extends StatelessWidget {
  const CircleResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 0, 50, 80)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Хочу еще!', style: TextStyle(color: Colors.white))),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      appBar: AppBar(
        flexibleSpace: Container(
          height: double.infinity,
          decoration: gradient,
        ),
        title: const Text('Вот что получилось!',
            style: TextStyle(
              color: Colors.white,
            )),
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
