import 'package:flutter/material.dart';

ThemeData ligthTheme() {
  return ThemeData(
    // Основной цвет приложения.
    primaryColor: const Color.fromARGB(255, 0, 50, 90),

    textSelectionTheme: TextSelectionThemeData(
      selectionHandleColor:
          Color.fromARGB(255, 0, 50, 90), // Цвет "ручек" выделения
      cursorColor: Color.fromARGB(255, 0, 50, 90),
    ),
    // Основной шрифт для заголовков.
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Opinion',
        fontSize: 24.0,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5,
        wordSpacing: 2,
      ),
      displayMedium: TextStyle(
        color: Color.fromARGB(255, 0, 50, 90),
        fontFamily: 'Opinion',
        fontSize: 22.0,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
        wordSpacing: 2,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Opinion',
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        wordSpacing: 1,
      ),

      // ... другие стили текста
    ),

    // Стили для элементов приложения (например, кнопки).
    buttonTheme: ButtonThemeData(
      // Изменяет стиль кнопки.

      // Устанавливает минимальную ширину кнопки.
      minWidth: 120.0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 0, 50, 80), // Цвет фона кнопки
        foregroundColor: Colors.white, // Цвет текста
        textStyle: TextStyle(
          fontFamily: 'Opinion',
          fontSize: 18.0, // Размер шрифта
          fontWeight: FontWeight.w500, // Вес шрифта
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20, // Горизонтальный отступ
          vertical: 10, // Вертикальный отступ
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35.0), // Радиус закругления
        ),
      ),
    ),

    // Стили для элементов текстового поля.
    inputDecorationTheme: InputDecorationTheme(
      // Настройки для TextField\
      filled: true, // Заполнить фон
      fillColor: const Color.fromARGB(255, 255, 255, 255), // Цвет фона
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: BorderSide.none, // Скрыть границу
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: BorderSide(
          color: Color.fromARGB(
              255, 0, 50, 80), // Цвет границы в обычном состоянии
          width: 1.0, // Толщина границы
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0),
        borderSide: BorderSide(
          color: Color.fromARGB(255, 0, 50, 80), // Цвет границы при фокусе
          width: 2.0, // Толщина границы
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0), // Радиус закругления
        borderSide: BorderSide(
          color:
              const Color.fromARGB(255, 75, 0, 20), // Цвет границы при ошибке
          width: 2.0, // Толщина границы
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25.0), // Радиус закругления
        borderSide: BorderSide(
          color: Color.fromARGB(
              255, 75, 0, 20), // Цвет границы при ошибке и фокусе
          width: 2.0, // Толщина границы
        ),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 15.0, // Горизонтальный отступ
        vertical: 15.0, // Вертикальный отступ
      ),
      labelStyle: TextStyle(
        color: Color.fromARGB(255, 0, 80, 130), // Цвет метки
        fontSize: 18.0, // Размер шрифта
        fontFamily: 'Opinion',
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      floatingLabelStyle: TextStyle(
          color: Color.fromARGB(255, 0, 50, 80),
          fontFamily: 'Opinion',
          fontSize: 18),
      floatingLabelAlignment: FloatingLabelAlignment.center,

      hintStyle: TextStyle(fontFamily: 'Opinion'),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.all(Colors.white), // Цвет галочки
      // Настройки для Checkbox
      side: BorderSide(
        color: Color.fromARGB(255, 0, 50, 80), // Цвет рамки
        width: 2.0, // Толщина рамки
        style: BorderStyle.solid, // Стиль рамки (solid, dashed, dotted)
      ),

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Радиус закругления
      ),
    ),

    // Стили для приложения (например, фон).
    scaffoldBackgroundColor: Colors.white,

    // Стили для всплывающих окон (например, диалогов).
    dialogTheme: DialogTheme(
      // Стили для текста диалога.
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      // Стиль для фона диалога.
      backgroundColor: Colors.blue[100],
    ),

    // Стили для индикатора прогресса.
    progressIndicatorTheme: ProgressIndicatorThemeData(
      // Цвет индикатора прогресса.
      color: Color.fromARGB(255, 0, 50, 80),
    ),

    // Стили для нижней панели навигации.
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      // Цвет фона нижней панели навигации.
      backgroundColor: Color.fromARGB(255, 0, 50, 80),
      // Стиль для выбранного элемента нижней панели навигации.
      selectedItemColor: Color.fromARGB(255, 0, 50, 80),
      // Стиль для невыбранного элемента нижней панели навигации.
      unselectedItemColor: const Color.fromARGB(255, 109, 38, 38),
    ),

    // Стили для приложения.
    appBarTheme: AppBarTheme(
      // Текст по центру заголовка
      centerTitle: true,
      // Цвет фона заголовка
      backgroundColor: const Color.fromARGB(255, 0, 50, 80),
      // Цвет текста заголовка
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontFamily: 'BebasNeue',
        fontSize: 24,
        letterSpacing: 2,
      ),
      // Стиль иконки заголовка.
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),

    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
  );
}

final gradient = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 5, 25, 50),
      Color.fromARGB(255, 0, 50, 90),
      Color.fromARGB(255, 5, 25, 50),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
);

final redGradient = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromARGB(255, 46, 0, 0),
      Color.fromARGB(255, 90, 0, 0),
      Color.fromARGB(255, 46, 0, 0),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
);

final goldGradient = LinearGradient(
  colors: [
    Color.fromARGB(255, 145, 100, 20),
    Color.fromARGB(255, 255, 191, 64),
    Color.fromARGB(255, 145, 100, 20),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
