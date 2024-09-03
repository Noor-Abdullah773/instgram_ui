
import 'package:flutter/material.dart';
import 'package:instegram/widegts/bottomBar_widget.dart';
import 'package:instegram/widegts/post.dart';
import 'package:instegram/widegts/story.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarWidget(), 
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.camera_alt_outlined,
                    size: 40,
                    color: Colors.grey[600],),
        titleSpacing: 3,
        title: Text("instgram",
                 style:TextStyle(
                  fontFamily: 'Billabong',
                   decoration: TextDecoration.none,
                   fontSize: 30,
                   color: Colors.black),
                   ),
        actions: [
          IconButton(onPressed:(){}, icon:Icon(Icons.search,size: 35,color: Colors.black,)),
          IconButton(onPressed:(){}, icon:Icon(Icons.search,size: 35,color: Colors.black,)),
        ],
      ),
      body: Column(
        children: [
          StoryWidget(),
          Divider(color: Colors.grey,),
          Expanded(child: Post_widget())
        ],
      ),
    );
  }
}