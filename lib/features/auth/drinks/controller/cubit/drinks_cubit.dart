import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:hamzawyapp/features/auth/drinks/model/drinksmodel.dart';
import 'package:meta/meta.dart';

import '../../../dashboard/modul/food/model/QuntityModel/qunmod.dart';
import '../../../dashboard/modul/food/model/rebo/databaseRepo.dart';

part 'drinks_state.dart';

class DrinksCubit extends Cubit<DrinksState> {
  DrinksCubit() : super(DrinksInitial());

  List data = [
    Drinksmodel(
        image: 'assets/tea.jpg',
        name: 'Tea',
        descripction: ' Hot Drink',
        price: "\$10"),
    Drinksmodel(
        image: 'assets/hot tea.jpg',
        name: 'Green Tea',
        descripction: 'Hot Drink',
        price: "\$11"),
    Drinksmodel(
        image: 'assets/coffe.jpg',
        name: 'Coffe',
        descripction: 'Hot Drink',
        price: "\$15"),
    Drinksmodel(
        image: 'assets/Biscoff Hot Chocolate .jpg',
        name: 'Biscoff Hot Chocolate',
        descripction: '               Hot Drink',
        price: "\$35"),
    Drinksmodel(
        image: 'assets/Mocha recipe.jpg',
        name: 'Coffe Mocha',
        descripction: '      HotDrink',
        price: "\$30"),
    Drinksmodel(
        image: 'assets/Salted Caramel Macchiato.jpg',
        name: 'Caramel Macchiato',
        descripction: '            Hot Drink',
        price: "\$45"),
    Drinksmodel(
        image: 'assets/Simple Skinny Vanilla Latte Recipe By Simple Green Moms.jpg',
        name: 'Vanilla Latte',
        descripction: 'Hot Drink',
        price: "\$50"),
    Drinksmodel(
        image: 'assets/Spanish Hot Chocolate.jpg',
        name: 'Hot Chocolate',
        descripction: '   Hot Drink',
        price: "\$30"),
    Drinksmodel(
        image: 'assets/Vanilla Gingerbread Latte_.jpg',
        name: 'Vanilla Ginger Latte',
        descripction: '         Hot Drink',
        price: "\$30"),
    Drinksmodel(
        image: 'assets/Bloody Red Velvet Hot Chocolate.jpg',
        name: 'Bloody Red Velvet',
        descripction: '        Cold Drink',
        price: "\$55"),
    Drinksmodel(
        image: 'assets/Coconut Cream Pie .jpg',
        name: 'Coconut Cream',
        descripction: '       Cold Drink',
        price: "\$35"),
    
  ];
  List<FoodModel> food = [];
  databaserepo repo = databaserepo();

  Future<void> init(String name,String des,int qu) async {
    await repo.initDB();
    repo.insertfood(name, des, 0, qu, Uint8List(10));
    emit(DrinksInitial());

    food = await repo.fatchfood();
    if (food.isEmpty) {
      emit(Drinksempyt());
    } else {
      emit(Drinksloaded());
    }
  }
}
