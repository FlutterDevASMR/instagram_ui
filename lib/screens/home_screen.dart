import 'package:flutter/material.dart';

import '../widgets/post_item.dart';
import '../widgets/story_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: const [
            Text(
              'instagram',
              style: TextStyle(color: Colors.black),
            ),
            Spacer(),
            Icon(
              Icons.add,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            SizedBox(width: 10),
            Icon(
              Icons.share,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: 110,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => StoryWidget(name: 'name $index'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) =>
                  PostItem(height: height, name: 'name $index'),
            ),
          ),
        ],
      ),
    );
  }
}
