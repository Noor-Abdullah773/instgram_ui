import 'package:flutter/material.dart';
class StoryWidget extends StatelessWidget {
  
  
   List<dynamic>story=[
    {"images":'images/phone-call.png',"usrrName":"Omer"},
    {"images":'images/private.png',"usrrName":"Mohammed"},
    {"images":'images/stethoscope.png',"usrrName":"Ali"},
    {"images":'images/phone-call.png',"usrrName":"Salem"},
    {"images":'images/private.png',"usrrName":"Fatima"},
    {"images":'images/stethoscope.png',"usrrName":"Noor"},
    {"images":'images/stethoscope.png',"usrrName":"ASisha"},
    {"images":'images/stethoscope.png',"usrrName":"codeTodo"},
    {"images":'images/stethoscope.png',"usrrName":"codeTodo"},
    {"images":'images/stethoscope.png',"usrrName":"codeTodo"}
   
  ];
  @override
 
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:List.generate(story.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(3.0),
                child: Column(
                  children: [
                    Container(
                               padding: const EdgeInsets.all(4),
                              width: 67,
                              height: 67,
                              decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors:[Color(0xff982282),Color(0xffEEA863)])
                              ),
                              child: Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(shape: BoxShape.circle,
                    color: Colors.white,
                     ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                           boxShadow: [
                    BoxShadow(color: Colors.grey,spreadRadius: 1)
                    ],
                          shape: BoxShape.circle,
                          image: DecorationImage(image:AssetImage('${story[index]["images"]}')
                        ),
                      ),
                    ),
                              ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("${story[index]["usrrName"]}"),
                    )
                  ],
                )
              );
            } ),),
          ),
        ),
       
      ]
    );
  }
}