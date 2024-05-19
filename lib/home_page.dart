import 'package:colorful_baloon_bloc/bloc/baloon_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:colorful_baloon_bloc/result_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _colorsQuantity = TextEditingController();
  TextEditingController _ballsQuantity = TextEditingController();

  @override
  void dispose() {
    _colorsQuantity.dispose();
    _ballsQuantity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: BlocBuilder<BaloonBloc, BaloonState>(
            builder: (context, baloonState) {
          baloonState.maybeMap(
            orElse: () {
              _colorsQuantity.text = '1';
              _ballsQuantity.text = '1';
            },
            sucsess: (baloonStateSucsess) {
              _colorsQuantity.text =
                  baloonStateSucsess.colorQuantity.toString();
              _ballsQuantity.text = baloonStateSucsess.ballsQuantity.toString();
            },
          );
          return Column(
            children: [
              helloText,
              const SizedBox(height: 20),
              colorQuantityText,
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: TextField(
                  cursorColor: Color.fromRGBO(0, 58, 106, 1),
                  textAlign: TextAlign.center,
                  controller: _colorsQuantity,
                  maxLength: 2,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(0, 58, 106, 1), width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    hintText: '',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(0, 58, 106, 1), width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ballsQuantityText,
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: TextField(
                  cursorColor: Color.fromRGBO(0, 58, 106, 1),
                  textAlign: TextAlign.center,
                  controller: _ballsQuantity,
                  maxLength: 2,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(0, 58, 106, 1), width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    hintText: '',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(0, 58, 106, 1), width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(0, 58, 106, 1),
                  ),
                  onPressed: () {
                    context.read<BaloonBloc>().add(BaloonEvent.updated(
                        colorQuantity: int.parse(_colorsQuantity.text),
                        ballsQuantity: int.parse(_ballsQuantity.text)));
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResultPage()),
                    );
                  },
                  child: Text('Рисуем, виу виу!',
                      style: TextStyle(color: Colors.white))),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(145, 0, 0, 1),
                  ),
                  onPressed: () {
                    context.read<BaloonBloc>().add(BaloonEvent.cleared());
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResultPage()),
                    );
                  },
                  child: Text('Эту кнопку нажимать нельзя',
                      style: TextStyle(color: Colors.white))),
            ],
          );
        }),
      ),
    );
  }
}

final helloText = MainText(
    text: 'Приветствую, cейчас мы будем \nрисовать разноцветные шары!');

final colorQuantityText = MainText(text: 'Для начала, укажи количество цветов');

final ballsQuantityText =
    MainText(text: 'Теперь укажи, сколько шаров мы нарисуем');

// final colorQuantityField = MainTextField(
//   maxLength: 2,
//   controller: _colorsQuantity,
//   hintText: '',
//   borderRadius: 25,
// );

// final ballsQuantityField = MainTextField(
//   maxLength: 2,
//   controller: _ballsQuantity,
//   hintText: '',
//   borderRadius: 25,
// );

// class MainTextField extends StatelessWidget {
//   final int maxLength;
//   final TextEditingController controller;
//   final String hintText;
//   final double borderRadius;

//   const MainTextField(
//       {required this.maxLength,
//       required this.controller,
//       required this.hintText,
//       required this.borderRadius,
//       super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width / 2,
//       child: TextField(
//         cursorColor: Color.fromRGBO(0, 58, 106, 1),
//         textAlign: TextAlign.center,
//         controller: controller,
//         maxLength: maxLength,
//         inputFormatters: <TextInputFormatter>[
//           FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
//         ],
//         decoration: InputDecoration(
//           enabledBorder: OutlineInputBorder(
//               borderSide:
//                   BorderSide(color: Color.fromRGBO(0, 58, 106, 1), width: 1.0),
//               borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
//           hintText: hintText,
//           focusedBorder: OutlineInputBorder(
//               borderSide:
//                   BorderSide(color: Color.fromRGBO(0, 58, 106, 1), width: 2.0),
//               borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
//         ),
//       ),
//     );
//   }
// }

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
