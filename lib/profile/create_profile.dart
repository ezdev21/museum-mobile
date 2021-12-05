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
          Text('phone number',style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),
          SizedBox(height:20),
          TextField(
            decoration:textInputDecoration.copyWith(labelText:'phone',hintText:'phone number'),
            controller:_productNameController,
          ),
          Text('city',style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),
          SizedBox(height:20),
          TextField(
            decoration:textInputDecoration.copyWith(labelText:'city',hintText:'city'),
            controller:_productNameController,
          ),
          Text('street',style:TextStyle(fontSize:25,fontWeight:FontWeight.bold)),
          SizedBox(height:20),
          TextField(
            decoration:textInputDecoration.copyWith(labelText:'street',hintText:'street'),
            controller:_productNameController,
          ),
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
