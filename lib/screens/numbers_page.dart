import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<Item> numbers = const [
    Item(
      image: 'assets/images/numbers/number_one.png',
      sound: 'number_one_sound.mp3',
      enName: 'One',
      jpName: 'Ichi',
    ),
    Item(
      image: 'assets/images/numbers/number_two.png',
      sound: 'number_two_sound.mp3',
      enName: 'Two',
      jpName: 'Ni',
    ),
    Item(
      image: 'assets/images/numbers/number_three.png',
      sound: 'number_three_sound.mp3',
      enName: 'Three',
      jpName: 'Mittsu',
    ),
    Item(
      image: 'assets/images/numbers/number_four.png',
      sound: 'number_four_sound.mp3',
      enName: 'Four',
      jpName: 'Shi',
    ),
    Item(
      image: 'assets/images/numbers/number_five.png',
      sound: 'number_five_sound.mp3',
      enName: 'Five',
      jpName: 'Go',
    ),
    Item(
      image: 'assets/images/numbers/number_five.png',
      sound: 'number_six_sound.mp3',
      enName: 'Six',
      jpName: 'Roku',
    ),
    Item(
      image: 'assets/images/numbers/number_seven.png',
      sound: 'number_seven_sound.mp3',
      enName: 'Seven',
      jpName: 'Sebun',
    ),
    Item(
      image: 'assets/images/numbers/number_eight.png',
      sound: 'number_eight_sound.mp3',
      enName: 'Eight',
      jpName: 'Hachi',
    ),
    Item(
      image: 'assets/images/numbers/number_nine.png',
      sound: 'number_nine_sound.mp3',
      enName: 'Nine',
      jpName: 'Kyū',
    ),
    Item(
      image: 'assets/images/numbers/number_ten.png',
      sound: 'number_ten_sound.mp3',
      enName: 'Ten',
      jpName: 'Jū',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Numbers',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItem(
            item: numbers[index],
            color: const Color(0xffEF9235),
            itemCategory: 'numbers',
          );
        },
      ),
    );
  }

  //use in this example with ListView Widget
  /* List<Widget> getList(List<Item> numbers) {
    List<Widget> itemsList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemsList.add(ListItem(
        item: numbers[i],
        color: Color(0xffEF9235),
        itemCategory: 'numbers',
      ));
    }
    return itemsList;
  }*/
}
