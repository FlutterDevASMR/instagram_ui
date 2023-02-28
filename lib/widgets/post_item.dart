import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class PostItem extends StatelessWidget {
  PostItem({super.key, required this.height, required this.name});

  final double height;
  String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey.shade300,
              ),
              const SizedBox(width: 10),
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Icon(Icons.menu),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          height: height / 2,
          color: Colors.grey.shade300,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: const [
              Icon(Icons.favorite),
              SizedBox(width: 10),
              Icon(Icons.chat_bubble_outline),
              SizedBox(width: 10),
              Icon(Icons.share),
              Spacer(),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: const [
              Text('Liked by '),
              Text(
                'username ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('and '),
              Text(
                'others ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: '$name ',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: lorem(paragraphs: 1, words: 10))
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
