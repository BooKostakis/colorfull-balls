import 'package:colorful_baloons/big_mistake.dart';
import 'package:colorful_baloons/bloc/baloon_bloc.dart';
import 'package:colorful_baloons/circle_result.dart';
import 'package:colorful_baloons/square_result.dart';
import 'package:colorful_baloons/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _colorsQuantity = TextEditingController();
  TextEditingController _ballsQuantity = TextEditingController();
  bool _isBallsSelected = false;
  bool _isSquaresSelected = false;

  @override
  void dispose() {
    _colorsQuantity.dispose();
    _ballsQuantity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          height: double.infinity,
          decoration: gradient,
        ),
        title: Text(
          'Разноцветные  фигуры',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainTextStyle(
                  text:
                      'Приветствую, сейчас мы будем рисовать разноцветные фигуры'),
              SizedBox(height: 20),
              ColorfullRow(
                containers: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 1, 37, 66),
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 180, 5, 5),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              MainTextStyle(
                text:
                    'Цвета пока выбираются случайным образом, но ты можешь выбрать количество цветов и количество фигур',
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextField(
                  controller: _colorsQuantity,
                  textAlign: TextAlign.center,
                  maxLength: 2,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  decoration: InputDecoration(
                    labelText: 'Количество цветов',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextField(
                  controller: _ballsQuantity,
                  textAlign: TextAlign.center,
                  maxLength: 2,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  decoration: InputDecoration(
                      alignLabelWithHint: true, labelText: 'Количество фигур'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MainTextStyle(
                text: 'Выбери фигуру',
              ),
              CheckboxListTile(
                title: const Text(
                  'Шары',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 50, 90),
                      fontFamily: 'Opinion',
                      fontSize: 18),
                ),
                value: _isBallsSelected,
                onChanged: (bool? value) {
                  setState(() {
                    _isBallsSelected = value!;
                    _isSquaresSelected = !_isBallsSelected;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text(
                  'Квадраты',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 50, 90),
                      fontFamily: 'Opinion',
                      fontSize: 18),
                ),
                value: _isSquaresSelected,
                onChanged: (bool? value) {
                  setState(() {
                    _isSquaresSelected = value!;
                    _isBallsSelected = !_isSquaresSelected;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: (_isBallsSelected || _isSquaresSelected)
                    ? () {
                        context.read<BaloonBloc>().add(BaloonEvent.updated(
                            colorQuantity:
                                int.tryParse(_colorsQuantity.text) ?? 1,
                            ballsQuantity:
                                int.tryParse(_ballsQuantity.text) ?? 1));
                        // Перенаправляем на соответствующую страницу
                        if (_isBallsSelected) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CircleResult(), // Замените BallsPage
                            ),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  SquareResult(), // Замените SquaresPage
                            ),
                          );
                        }
                      }
                    : null, // Кнопка не нажимается, если ни один чекбокс не выбран
                child: Text('Рисуем, виу, виу!'),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(145, 0, 0, 1),
                  ),
                  onPressed: () {
                    context.read<BaloonBloc>().add(BaloonEvent.cleared());
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BigMistake()),
                    );
                  },
                  child: Text('Эту кнопку нажимать нельзя',
                      style: TextStyle(color: Colors.white))),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorfullRow extends StatelessWidget {
  const ColorfullRow({super.key, required this.containers});

  final List<Widget> containers;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Определяем ширину экрана
        double screenWidth = constraints.maxWidth;
        // Определяем количество контейнеров, которые могут поместиться в строку
        double count = (screenWidth / 1.4) / 20;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            count.toInt(),
            (index) => containers[index % containers.length],
          ),
        );
      },
    );
  }
}

class MainTextStyle extends StatelessWidget {
  final String text;

  MainTextStyle({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displayMedium,
      textAlign: TextAlign.center,
    );
  }
}
