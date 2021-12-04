import 'package:ecommerce/models/product.dart';
class Cart{
  int id;
  int user_id;
  List<Product> products;
  Cart({this.id,this.user_id,this.products});
}