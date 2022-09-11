import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/util/bubble_stories.dart';
import 'package:flutter_instagram_ui/util/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({Key? key}) : super(key: key);

  final List people = ['kimak', 'dimak', 'india', 'pakis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "instagram",
                style: TextStyle(color: Colors.black),
              ),
              Icon(Icons.add),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Icon(Icons.favorite),
              ),
              Icon(Icons.share),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return BubbleStories(text: people[index]);
                  }),
            ),
            Expanded(
              child: ListView.builder(                          // There is one list view and one is list view builder 
                itemCount: people.length,
                itemBuilder: (BuildContext context, int index) {
                  return UserPosts(name: people[index]);
                },
              ),
            ),
          ],
        ));
  }
}
