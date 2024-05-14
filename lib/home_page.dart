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
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Text(
            'Приветствую, cейчас мы будем \nрисовать разноцветные шары!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(0, 58, 106, 1),
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Для начала, укажи количество цветов, \nно не более 9',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(0, 58, 106, 1),
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: _colorsQuantity,
            maxLength: 1,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            ],
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              hintText: '',
            ),
          ),
          const Text(
            'Теперь укажи, сколько шаров мы нарисуем, от 1 до 9',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(0, 58, 106, 1),
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: _ballsQuantity,
            maxLength: 1,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            ],
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              hintText: '',
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ResultPage(_ballsQuantityInt, _colorsQuantityInt)),
                );
              },
              child: const Text('Рисуем, виу, виу!'))
        ],
      ),
    );
  }
}
