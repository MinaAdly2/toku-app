import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_members_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Center(
          child: Text(
            'Toku',
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Category(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const NumbersPage();
                      }));
                    },
                    title: 'Numbers',
                    color: const Color(0xffEF9235),
                  ),
                ),
                Expanded(
                  child: Category(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const FamilyMembersPage();
                      }));
                    },
                    title: 'Family Members',
                    color: const Color(0xff558B37),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Category(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const ColorsPage();
                      }));
                    },
                    title: 'Colors',
                    color: const Color(0xff79359F),
                  ),
                ),
                Expanded(
                  child: Category(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const PhrasesPage();
                      }));
                    },
                    title: 'Phrases',
                    color: const Color(0xff50ADC7),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
