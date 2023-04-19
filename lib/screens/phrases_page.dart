import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<Item> phrases = const [
    Item(
      sound: 'are_you_coming.wav',
      enName: 'Are you coming?',
      jpName: 'Kimasu ka?',
    ),
    Item(
      sound: 'how_are_you_feeling.wav',
      enName: 'How are you feeling?',
      jpName: 'Go kibun wa ikagadesu ka?',
    ),
    Item(
      sound: 'i_love_anime.wav',
      enName: 'I love anime',
      jpName: 'Watashi wa anime ga daisukidesu',
    ),
    Item(
      sound: 'i_love_programming.wav',
      enName: 'I love programming',
      jpName: 'Puroguramingu ga daisuki',
    ),
    Item(
      sound: 'programming_is_easy.wav',
      enName: 'Programming is easy',
      jpName: 'Puroguramingu wa kantan',
    ),
    Item(
      sound: 'what_is_your_name.wav',
      enName: 'What is your name?',
      jpName: 'Namae wa nandesu ka?',
    ),
    Item(
      sound: 'where_are_you_going.wav',
      enName: 'Where are you going?',
      jpName: 'Doko ni iku no?',
    ),
    Item(
      sound: 'yes_im_coming.wav',
      enName: 'Yes i am coming',
      jpName: 'Hai, kimasu',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Phrases',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (BuildContext context, int index) {
          return PhraseItem(
            item: phrases[index],
            color: const Color(0xff50ADC7),
            itemCategory: 'phrases',
          );
        },
      ),
    );
  }
}
