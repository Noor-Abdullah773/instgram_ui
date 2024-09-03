import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Post_widget extends StatelessWidget {
  const Post_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:2 ,
      itemBuilder: (context,index){
       return Column(children: [
        ListTile(
          leading:Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(),
              image: DecorationImage(image: AssetImage("images/doctor.png"),)
            ),
          ),
        title:Text("codeTodo") ,
        subtitle:Text("noor@gmail.com"),
        trailing: Icon(Icons.more_vert)
        ) ,
        Container(
          height: 300,
          decoration: BoxDecoration(
            
            image: DecorationImage(
              fit:BoxFit.cover,
              image:AssetImage('images/1646000783154.jpg') )
          ),
        ),
        ListTile(
          leading: Wrap(
            spacing: 10,
            children: [
              Icon(Icons.favorite,color: Colors.red,
                size: 35,
              ),
              SvgPicture.asset('images/comment.svg',width: 35,),
              SvgPicture.asset('images/message.svg',width: 35,),
            ],
            
          ),
          trailing: Icon(Icons.bookmark_border_outlined,size: 35,color: Colors.black,),
        ),
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("1000 Likes",style: TextStyle(fontWeight: FontWeight.w700),),
          )
        ],),
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("hi guys subcribe my channel",style: TextStyle(fontWeight: FontWeight.w700),),
          )
        ],),
        Row(children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("view all 15 commint",style: TextStyle(fontWeight: FontWeight.w700),),
          )
        ],),
       ListTile(
          leading:Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(),
              image: DecorationImage(image: AssetImage("images/doctor.png"),)
            ),
          ),
        title:Text("add a comment ......") ,
       
        trailing: Wrap(
            spacing: 10,
            children: [
              Icon(Icons.favorite,color: Colors.red,
                size: 35,
              ),
              SvgPicture.asset('images/comment.svg',width: 35,),
              SvgPicture.asset('images/message.svg',width: 35,),
            ],
            
          ),
        ) ,
       
       ],);

      });
  }
}