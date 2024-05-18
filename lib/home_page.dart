import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lesson_001_flutter_stack/result_page.dart';

TextEditingController _colorsQuantity = TextEditingController(text: '1');
TextEditingController _ballsQuantity = TextEditingController(text: '1');
int _ballsQuantityInt = int.parse(_ballsQuantity.text);
int _colorsQuantityInt = int.parse(_colorsQuantity.text);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            helloText,
            const SizedBox(height: 20),
            colorQuantityText,
            const SizedBox(height: 20),
            colorQuantityField,
            const SizedBox(height: 20),
            ballsQuantityText,
            const SizedBox(height: 20),
            ballsQuantityField,
            const SizedBox(height: 20),
            goButton,
          ],
        ),
      ),
    );
  }
}

final goButton = goPaint(text: 'Рисуем, виу, виу!');

class goPaint extends StatelessWidget {
  final String text;
  const goPaint({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(0, 58, 106, 1), // Изменяем цвет фона
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ballsPainted),
          );
        },
        child: Text(text, style: TextStyle(color: Colors.white)));
  }
}

final ballsPainted = ResultPage(_ballsQuantityInt, _colorsQuantityInt);

final helloText = MainText(
    text: 'Приветствую, cейчас мы будем \nрисовать разноцветные шары!');

final colorQuantityText = MainText(text: 'Для начала, укажи количество цветов');

final ballsQuantityText =
    MainText(text: 'Теперь укажи, сколько шаров мы нарисуем');

final colorQuantityField = MainTextField(
  maxLength: 2,
  controller: _colorsQuantity,
  hintText: '',
  borderRadius: 25,
);

final ballsQuantityField = MainTextField(
  maxLength: 2,
  controller: _ballsQuantity,
  hintText: '',
  borderRadius: 25,
);

class MainTextField extends StatelessWidget {
  final int maxLength;
  final TextEditingController controller;
  final String hintText;
  final double borderRadius;

  const MainTextField(
      {required this.maxLength,
      required this.controller,
      required this.hintText,
      required this.borderRadius,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      child: TextField(
        cursorColor: Color.fromRGBO(0, 58, 106, 1),
        textAlign: TextAlign.center,
        controller: controller,
        maxLength: maxLength,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
        ],
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromRGBO(0, 58, 106, 1), width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Color.fromRGBO(0, 58, 106, 1), width: 2.0),
              borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        ),
      ),
    );
  }
}

class MainText extends StatelessWidget {
  final String text;
  MainText({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color.fromRGBO(0, 58, 106, 1),
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
    );
  }
}
