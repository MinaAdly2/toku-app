import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<Item> color = const [
    Item(
      image: 'assets/images/colors/color_black.png',
      sound: 'black.wav',
      enName: 'Black',
      jpName: 'Kuro',
    ),
    Item(
      image: 'assets/images/colors/color_brown.png',
      sound: 'brown.wav',
      enName: 'Brown',
      jpName: 'Chairo',
    ),
    Item(
      image: 'assets/images/colors/color_dusty_yellow.png',
      sound: 'dusty yellow.wav',
      enName: 'Dusty Yellow',
      jpName: 'Hokori ppoi kiiro',
    ),
    Item(
      image: 'assets/images/colors/color_gray.png',
      sound: 'gray.wav',
      enName: 'Gray',
      jpName: 'Gurē',
    ),
    Item(
      image: 'assets/images/colors/color_green.png',
      sound: 'green.wav',
      enName: 'Green',
      jpName: 'Midori',
    ),
    Item(
      image: 'assets/images/colors/color_red.png',
      sound: 'red.wav',
      enName: 'Red',
      jpName: 'Aka',
    ),
    Item(
      image: 'assets/images/colors/color_white.png',
      sound: 'white.wav',
      enName: 'White',
      jpName: 'Shiro',
    ),
    Item(
      image: 'assets/images/colors/yellow.png',
      sound: 'yellow.wav',
      enName: 'Yellow',
      jpName: 'Kiiro',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Family Members',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: color.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItem(
            item: color[index],
            color: const Color(0xff79359F),
            itemCategory: 'colors',
          );
        },
      ),
    );
  }
}
