import 'package:flutter/material.dart';
import 'package:toku/components/list_item.dart';
import 'package:toku/models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);
  final List<Item> familyMember = const [
    Item(
      image: 'assets/images/family_members/family_father.png',
      sound: 'father.wav',
      enName: 'Father',
      jpName: 'Chichioya',
    ),
    Item(
      image: 'assets/images/family_members/family_mother.png',
      sound: 'mother.wav',
      enName: 'Mother',
      jpName: 'Hahaoya',
    ),
    Item(
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'grand father.wav',
      enName: 'Grand Father',
      jpName: 'Ojīsan',
    ),
    Item(
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'grand mother.wav',
      enName: 'Grand Mother',
      jpName: 'O bāchan',
    ),
    Item(
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'older bother.wav',
      enName: 'Older Brother',
      jpName: 'Ani',
    ),
    Item(
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'older sister.wav',
      enName: 'Older Sister',
      jpName: 'Ane',
    ),
    Item(
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'daughter.wav',
      enName: 'Daughter',
      jpName: 'Musume',
    ),
    Item(
      image: 'assets/images/family_members/family_son.png',
      sound: 'son.wav',
      enName: 'Son',
      jpName: 'Musuko',
    ),
    Item(
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'younger brohter.wav',
      enName: 'Younger Brother',
      jpName: 'Otōto',
    ),
    Item(
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'younger sister.wav',
      enName: 'Younger Sister',
      jpName: 'Imōto',
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
        itemCount: familyMember.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItem(
            item: familyMember[index],
            color: const Color(0xff558B37),
            itemCategory: 'family_members',
          );
        },
      ),
    );
  }
}
