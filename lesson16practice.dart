import 'dart:io';

void main() {
  // homeTask1(null);
  // homeTask2(2, null);
  // homeTask3();
  // homeTask4(2);
  // homeTask5(true); // true Погода плохая // false Погода Отличная
  // homeTask6('iphone', 12, 'white', null, null, null);
}
// Написать функцию которая принимает String, если не передано вывести “Ошибка”

homeTask1(String? words) {
  print(words ?? 'Ошибка');
  if (words == null) {
    print('Ошибка иф менен');
  }
}

// Написать функцию которая принимает (int a, int b) и выводит их сумму , если
// значения не заданы, то присвоить им значения int a = 1, int b = 2;
homeTask2(int? a, int? b) {
  if (a == null) {
    a = 1;
  }
  if (b == null) {
    b = 2;
  }
  print(a + b);
}

// Создайте программу, которая просит пользователя ввести свое имя и возраст.
// Распечатайте сообщение, в котором говорится, сколько лет и как зовут.
// Если значения не переданы поставить заглушки
homeTask3() {
  print('Напишите свое имя: ');
  String? name = stdin.readLineSync()!;
  print('Напишите свой возраст: ');
  int age = int.parse(stdin.readLineSync()!);
  if (name.isNotEmpty) {
    print('Ваше имя: $name');
  } else if (name == null) {
    print('ошибка введите имя');
    homeTask3();
  }
    if (age != null) {
    print("ваш возраст: $age");
  } else if (age == null) {
    print('Введите ваше имя нормально епт');
    homeTask3();
  }
}

// Дано число. Если оно больше 3 и не null, то увеличить число на 10,
// иначе уменьшить на 10.\
homeTask4(int a) {
  if (a > 3 || a == null) {
    print(a * 10);
  } else {
    print(a / 10);
  }
}
// Задание 5
// Создайте программу, которая в зависимости от текущей погоды подсказывает вам
// брать зонт или нет. (Подсказка: Нужно создать переменную bool и присвоить ей значение,
// сделать с помощью тернарного оператора (? : )).
// Если значение не передано, то по умолчанию присвоить false

void homeTask5(bool pogoda) {
  pogoda == true;
  pogoda == true
      ? print('Возьмите зонт')
      : pogoda == false
          ? print('Погода отличная, зонт можно оставить дома')
          : pogoda == null
              ? print('Ошибка')
              : null;
}

// Задание 6
// Создать функцию phone, которая принимает обязательные поля name, model, color
// и необязательные поля длина, ширина, вес
// Распечатать пользователю характеристики телефона
homeTask6(String name, dynamic model, String color, int? length, int? width,
    int? weight) {
  print('Название вашего телефона: $name');
  print('Модель телефона: $model');
  print('Цвет телефона: $color');
  print('Длинна состовляет ${length ?? 'Размер не имеет значения'}');
  print('Ширина состовляет: ${width ?? '-'}');
  print('вес состовляет ${weight ?? '-'}');
}
