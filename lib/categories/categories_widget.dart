import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter:category_products.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({ Key? key }) : super(key: key);

  @override
  _CategoriesWidgetState createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  List<Category> categories=[]
  void getCategories(){
    try{
     Response response=get('http://127.0.0.1:8000/categories/all');
     categories=jsonDecode(response.body);
    }
    catch(e){

    }
  }
  @override
  void initState() {
    super.initState();
    getCategories();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        childern:ListView.builder(
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap:(){
               Navigator.push(context,MaterialPageRoute(builder:((context)=>CategoryProducts())),arguments:{category:category});
              },
              child:Text(categories[index].name,style:TextStyle())
            );
          },
        ),
      )
    );
  }
}