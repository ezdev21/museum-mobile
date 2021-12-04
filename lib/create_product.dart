import 'package:flutter/material.dart';

class CreateProduct extends StatefulWidget {
  const CreateProduct({ Key? key }) : super(key: key);

  @override
  _CreateProductState createState() => _CreateProductState();
}

class _CreateProductState extends State<CreateProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        childeren:[
          Text('sell your products here',style:TextStyle(fontSize:20,fontWeight:FontWeight.bold)),
          SizedBox(height:20),
          Text('product name',style:TextStyle(fontSize:20,fontWeight:FontWeight.bold)),
          SizedBox(height:20),
          TextFormField(
           decoration:textInputDecoration.copyWith(labelText:'name',hintText:'product name'),
           validator:(val)=>val.length>1 null : 'product name should be minimum of 2 chars',
           controller:_productNameController,
          ),
          SizedBox(height:20),
          TextFormField(
           decoration:textInputDecoration.copyWith(labelText:'description',hintText:'product description'),
           controller:_productNameController,
          ),
          SizedBox(height:20),
          TextButton(
            onpressed:(){

            },
            color:Colors.crimson,
            child:Text('sell',style:TextStyle(color:Colors.white))
          )
        ]
      )
    );
  }
}