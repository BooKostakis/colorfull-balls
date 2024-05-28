import 'package:colorful_baloons/theme.dart';
import 'package:flutter/material.dart';

class BigMistake extends StatelessWidget {
  const BigMistake({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ligthTheme(),
      home: Scaffold(
          backgroundColor: Colors.white,
          floatingActionButton: Container(
              height: 44.0,
              decoration: BoxDecoration(
                  gradient: goldGradient,
                  borderRadius: BorderRadius.circular(30)),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Перевести пять баксов',
                      style: TextStyle(color: Colors.white)))),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterFloat,
          appBar: AppBar(
            flexibleSpace: Container(
              height: double.infinity,
              decoration: redGradient,
            ),
            title: const Text(
              'ТЫ СОВЕРШИЛ УЖАСНУЮ ОШИБКУ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Opinion', fontSize: 18),
                      'Дорогой друг, прости меня за эту кнопку, эта кнопка была условием дьявола когда он согласился мне помочь c изучением флаттера.'),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Opinion', fontSize: 18),
                      'Нажав эту кнопку ты обрек свою душу на ужасные страдания среди тех кто предлагает курсы вроде:'),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Opinion', fontSize: 18),
                      '"Стань программистом за три дня"'),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Opinion', fontSize: 18),
                      '"Стать богатым легко, нужно только..."'),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Opinion', fontSize: 18),
                      'Теперь избежать наказания можно только двумя способами:'),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Opinion', fontSize: 18),
                      'Первый способ - это разослать 50 твоим друзьям сообщение:'),
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Opinion', fontSize: 18),
                      ' "Слушай, что то я в депрессии, приезжай, пожалуйста и срочно, как бы чего не случилось"'),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'Opinion', fontSize: 18),
                      'Второй способ - воспользоваться кнопкой внизу. '),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Opinion',
                          fontSize: 24,
                          color: Color.fromARGB(255, 109, 8, 1)),
                      'Если ты этого не сделаешь - твоя душа тебе спасибо не скажет. '),
                ],
              ),
            ),
          )),
    );
  }
}
