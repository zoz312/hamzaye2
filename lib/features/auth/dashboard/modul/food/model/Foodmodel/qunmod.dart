import 'dart:typed_data';

class FoodModel {
  String? name, desc;
  int? fav,  id, ava , que ;
  //Uint8List? image;
  FoodModel.fromJson(Map e){
    name = e['name'] ;
    desc = e['description'] ;
    fav = e['favroite'] ;
   // cart = e['cart'] ;
    id = e['cart'] ;
    ava = e['available'] ;
    que = e['qnt'] ;
   // image = e['image'] ;
  }
}

       