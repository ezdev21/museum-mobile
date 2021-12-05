import 'package:flutter/material.dart';

class CommentCard extends StatefulWidget {
  const CommentCard({ Key? key }) : super(key: key);

  @override
  _CommentCardState createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          Text('comment as user.name',
          style:TextStyle(
           fontSize: 20,
           fontWeight:FontWeight.w500 
          )
          ),
          TextField(
           decoration: InputDecoration(
             border: OutlineInputBorder(),
             hintText: 'comment here'
           ), 
          ),
          ListTile(
            leading: Text('name'),

          )
        ],
      )
    );
  }
}