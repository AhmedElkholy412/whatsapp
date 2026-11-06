import 'package:assignment_1/home/image_bubble.dart';
import 'package:flutter/material.dart';

import 'message_bubble.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF181818),
      appBar: AppBar(
        backgroundColor: Color(0xFF168C4B),
        leading: IconButton(onPressed:(){}, icon: Image.asset('assets/images/vector.png',color: Colors.white,width: 9,),),
        titleSpacing: 0,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                width: 40,
                height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                      image: AssetImage("assets/images/profile_image.png"),
                      fit: BoxFit.cover
                    )
                  ),
              ),
            ),
            Text("John Safwat",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15),),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Image.asset('assets/images/Phone.png',color: Colors.white,width: 24,height: 24,)),
          IconButton(onPressed: (){}, icon: Image.asset('assets/images/video.png',color: Colors.white,width: 24,height: 24,)),
          IconButton(onPressed: (){}, icon: Image.asset('assets/images/More-vertical.png',color: Colors.white,width: 24,height: 24,)),

        ],
      ),
      body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/screen1.png"),
                fit: BoxFit.cover
              )
            ),
          child: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Column(
              children: [
                MessageBubble(message: "Hello!", isMe: false,),
                MessageBubble(message: "Hello!", isMe: true,),
                MessageBubble(message: "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it!", isMe: false,),
                ImageBubble(image: 'assets/images/image3.jpg', isMe: false,),
                MessageBubble(message: "what a great content tp learn flutter", isMe: true,),
                Container(
                  height: 49,
                  margin: EdgeInsets.only(top: 25),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Container(
                        width: 304,
                        height: 48,
                        margin: EdgeInsets.only(left:  16),
                        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(39),
                          border: Border.all(color: Color(0xFF168C4B),width: 1.1),
                        ),
                        child: Row(
                          children: [
                            Image.asset('assets/images/Camera.png',color: Colors.white,width: 24,height: 24,),
                            SizedBox(width: 10,),
                            Text("Type a message...",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),),
                            Spacer(),
                            Image.asset('assets/images/Send.png',color: Colors.white,width: 24,height: 24,),
                          ]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF168C4B),
                          shape: CircleBorder(),
                        ), child: Center(child: Image.asset('assets/images/Mic.png',color: Colors.white,width: 24,height: 24,)),),
                      )

                    ]
                  )
                )
              ],
             ),
          )

        ),





    );
  }
}