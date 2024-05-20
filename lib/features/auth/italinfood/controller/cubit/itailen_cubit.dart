import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:hamzawyapp/features/auth/dashboard/modul/food/model/rebo/databaseRepo.dart';
import 'package:hamzawyapp/features/auth/italinfood/model/itilainmodel.dart';
import 'package:meta/meta.dart';

import '../../../dashboard/modul/food/model/QuntityModel/qunmod.dart';

part 'itailen_state.dart';

class ItailenCubit extends Cubit<ItailenState> {
  ItailenCubit() : super(ItailenInitial());
  List data = [
    itilanModel(
        image: 'assets/Old Forge Pizza .jpg',
        name: 'Mix Fromage',
        descripction: 'Pizza',
        price: "\$110"),
    itilanModel(
        image: 'assets/Neapolitan Pizza Dough.jpg',
        name: 'Neapolitano',
        descripction: 'Pizza',
        price: "\$100"),
    itilanModel(
        image: 'assets/Deluxe Pizza.jpg',
        name: 'Deluxe Pizza',
        descripction: 'Pizza',
        price: "\$150"),
    itilanModel(
        image: 'assets/Cheesy Garlic Bread Pizza.jpg',
        name: 'Cheesy Garlic',
        descripction: 'Pizza',
        price: "\$115"),
    itilanModel(
        image: 'assets/Calabrian Chili Roasted Red Pepper Pizza_.jpg',
        name: 'Red Pepper',
        descripction: 'Pizza',
        price: "\$100"),
    itilanModel(
        image: 'assets/Homemade Pepperoni Pizza jpg.jpg',
        name: 'Pepperoni Pizza',
        descripction: 'Pizza',
        price: "\$170"),
    itilanModel(
        image: 'assets/(Spicy Tomato Pasta).jpg',
        name: 'Tomato Pasta',
        descripction: 'Pasta',
        price: "\$70"),
    itilanModel(
        image: 'assets/{Beef Ragu Pasta}.jpg',
        name: 'Ragu Pasta',
        descripction: 'Pasta',
        price: "\$90"),
    itilanModel(
        image: 'assets/Greek beef pasta bake.jpg',
        name: 'Beef Pasta',
        descripction: 'Pasta',
        price: "\$90"),
    itilanModel(
        image: 'assets/Sausage Pasta .jpg',
        name: 'Sausage Pasta',
        descripction: '   Pasta',
        price: "\$80"),
  ];
  List<FoodModel> food = [];
  databaserepo repo = databaserepo();

  Future<void> init(String name,String des,int qu) async {
    await repo.initDB();
    repo.insertfood(name, des, 0, qu, Uint8List(10));
    emit(ItailenInitial());

    food = await repo.fatchfood();
    if (food.isEmpty) {
      emit(Itailenemp());
    } else {
      emit(Itailanload());
    }
  }

}
