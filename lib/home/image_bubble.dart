import 'package:flutter/material.dart';

class ImageBubble extends StatelessWidget{
  String image;
  bool isMe;
  ImageBubble({required this.image,required this.isMe});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(maxWidth: 230),
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        decoration: BoxDecoration(
          color: isMe ? Color(0xFF181818) : Color(0xFF168C4B),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
            topLeft: !isMe ? Radius.circular(0) : Radius.circular(16),
            topRight: isMe ? Radius.circular(0) : Radius.circular(16),
          ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(image,fit: BoxFit.cover,),
          ),

      )

    );
  }

}