import 'package:flutter/material.dart';
class EditProduct extends StatefulWidget {
  const EditProduct({ Key? key }) : super(key: key);

  @override
  _EditProductState createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
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
              'edit profile',
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