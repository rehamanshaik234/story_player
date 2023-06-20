import 'package:flutter/material.dart';
import 'package:story_player/page/stories.dart';

import '../data/users.dart';
import '../main.dart';

class StoryListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Stories'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: users.length,
          itemBuilder: (context,index){
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => StoryPage(user: users[index]),
                    ),
                  );
                },
                child: CircleAvatar(
                  radius: 20,
                  child: Image.asset('assets/user.png'),
                ),
              ),
              SizedBox(height: 8,),
              Text(users[index].name,style: TextStyle(
                fontWeight: FontWeight.w400
              ),)
            ],
          ),
        );
      }),
    ),
  );
}