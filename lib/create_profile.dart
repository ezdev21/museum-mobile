import 'package:flutter/material.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({ Key? key }) : super(key: key);

  @override
  _CreateProfileState createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(),
          TextField(),
          TextField(),
          TextField(),
          TextButton(
            onPressed: (){

            },
            child: Text(
              'complete profile',
              style:TextStyle(
                backgroundColor: Colors.green,
                color:Colors.white
              )
              )
              )
        ],
      ),
    );
  }
}
