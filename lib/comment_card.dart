import 'package:flutter/material.dart';
import 'package:ecommerce/models/comment.dart';

class CommentCard extends StatefulWidget {
  Comment comment=Comment();
  const CommentCard({ Key? key,this.comment}) : super(key: key);

  @override
  _CommentCardState createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(2),
      margin:EdgeInsets.all(2),
      child:ListView(
        leading:CircleAvatar(
          backgroundImage:NetworkImage('http://127.0.0.1:8000/user/avatar'),
          radius:25
        ),
        title:Text(comment.body,style:TextStyle(fontSize:20)),
        subtitle:Row(
          IconButton(
            onpressed:(){

            },
            icon:Icon(Icons.thumbup),
            size:25
          ),
          IconButton(
            onpressed:(){

            },
            icon:Icon(Icons.thumbup),
            size:25
          )
        )
      )
    );
  }
}