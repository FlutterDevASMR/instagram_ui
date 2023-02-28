import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/story_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: const [
              Text(
                'FlutterDevASMR',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Spacer(),
              Icon(
                Icons.add_box_outlined,
                color: Colors.black,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey.shade300,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text(
                              '376',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '5498',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text('Followers'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '97',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text('Followings'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'FlutterDevAsmr',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('Flutter ASMR tutorials'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileScreenButton(task: 'Edit Profile'),
                  ProfileScreenButton(task: 'Ad Tools'),
                  ProfileScreenButton(task: 'Insights'),
                ],
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 110,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    StoryWidget(name: 'Story $index'),
              ),
            ),
            const SizedBox(height: 20),
            const TabBar(
              tabs: [
                Icon(
                  Icons.tag,
                  color: Colors.black,
                ),
                Icon(
                  Icons.bookmark,
                  color: Colors.black,
                ),
                Icon(
                  Icons.video_call,
                  color: Colors.black,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.black,
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  GridView.builder(
                    itemCount: 5,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.all(4),
                      color: Colors.grey.shade300,
                    ),
                  ),
                  GridView.builder(
                    itemCount: 5,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.all(4),
                      color: Colors.grey.shade300,
                    ),
                  ),
                  GridView.builder(
                    itemCount: 5,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.all(4),
                      color: Colors.grey.shade300,
                    ),
                  ),
                  GridView.builder(
                    itemCount: 5,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.all(4),
                      color: Colors.grey.shade300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileScreenButton extends StatelessWidget {
  ProfileScreenButton({super.key, required this.task});

  String task;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Text(task),
    );
  }
}
