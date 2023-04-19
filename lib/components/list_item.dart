import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {Key? key,
      required this.item,
      required this.color,
      required this.itemCategory})
      : super(key: key);
  final Item item;
  final Color color;
  final String itemCategory;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(item.image!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  item.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemCategory/');
                player.play(item.sound);
              } catch (ex) {
                // ignore_for_file: avoid_print
                print(ex);
              }
            },
            icon: const Icon(Icons.play_arrow),
            color: Colors.white,
            iconSize: 30.0,
          ),
        ],
      ),
    );
  }
}

class PhraseItem extends StatelessWidget {
  const PhraseItem({
    Key? key,
    required this.item,
    required this.color,
    required this.itemCategory,
  }) : super(key: key);
  final Item item;
  final Color color;
  final String itemCategory;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  item.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemCategory/');
                player.play(item.sound);
              } catch (ex) {
                print(ex);
              }
            },
            icon: const Icon(Icons.play_arrow),
            color: Colors.white,
            iconSize: 30.0,
          ),
        ],
      ),
    );
  }
}
