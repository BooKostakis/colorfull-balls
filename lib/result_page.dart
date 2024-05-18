import 'package:flutter/material.dart';
import 'package:lesson_001_flutter_stack/main.dart';
import 'package:lesson_001_flutter_stack/rainbow_stack.dart';

class ResultPage extends StatelessWidget {
  final int _ballsQuantity;
  final int _colorQuantity;

  const ResultPage(this._ballsQuantity, this._colorQuantity, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(0, 58, 106, 1)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => App()),
            );
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
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: _ballsQuantity, // Количество виджетов
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
                              colorsQuantity: _colorQuantity),
                          const SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    )),
          );
        },
      ),
    );
  }
}
