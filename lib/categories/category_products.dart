import 'package:flutter/material.dart';
import 'package:ecommerce/category.dart';
import 'package:ecommerce/product_card.dart';

class CategoryProducts extends StatefulWidget {
  CategoryProducts({Key? key}) : super(key: key);

  @override
  _CategoryProductsState createState() => _CategoryProductsState();
}

class _CategoryProductsState extends State<CategoryProducts> {

  Map<Cateogry> category=ModalRoute.of(context).settings.arguments.category;
  List<Product> products;
  getCategoryProducts(){
   try{
    Response response=get('http://127.0.0.1:8000/products/singlecategory');
    products=jsonDecode(response.body);
   }
   catch(e){

   }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      childern:[
        Text(category.name,style:TextStyle(fontSize:25,fontWeight:FontWeight)),
        SizedBox(height:20),
        ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductCard(products[index]);
          },
        ),
      ]
    );
  }
}