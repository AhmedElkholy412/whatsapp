import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget{
  String message;
  bool isMe;
  MessageBubble({required this.message,required this.isMe});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(maxWidth: 270),
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 13),
        decoration: BoxDecoration(
          color: isMe ? Color(0xFF181818) : Color(0xFF168C4B),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
            topLeft: !isMe ? Radius.circular(0) : Radius.circular(16),
            topRight: isMe ? Radius.circular(0) : Radius.circular(16),
          ),

        ),

        child: Text(message,style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w500),),
      ),
    );
  }

}