import 'package:ecommerce/models/product.dart';

class Order{
  int id;
  int user_id;
  List<Product> products
  Order({this.id,this.user_id,this.products});
}