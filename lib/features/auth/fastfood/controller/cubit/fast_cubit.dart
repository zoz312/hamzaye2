import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:hamzawyapp/features/auth/fastfood/model/fastmodel.dart';
import 'package:meta/meta.dart';

import '../../../dashboard/modul/food/model/QuntityModel/qunmod.dart';
import '../../../dashboard/modul/food/model/rebo/databaseRepo.dart';

part 'fast_state.dart';

class FastCubit extends Cubit<FastState> {
  FastCubit() : super(FastInitial());
  List data = [
    fastmodel(
        image: 'assets/Classic Cheeseburger [25 Minutes].jpg',
        name: 'Cheeseburger',
        descripction: 'Burger',
        price: "\$95"),
    fastmodel(
        image: 'assets/CrispyChicken Burger.jpg',
        name: 'Chicken Burger',
        descripction: 'Burger',
        price: "\$105"),
    fastmodel(
        image: 'assets/hot dog spice.jpg',
        name: 'Hot Dog',
        descripction: 'Asian food',
        price: "\$60"),
    fastmodel(
        image: 'assets/KoreanHot Dogs.jpg',
        name: 'Korean Hot Dogs',
        descripction: 'Asian food',
        price: "\$65"),
    fastmodel(
        image: 'assets/Chalupa Cravings Box .jpg',
        name: 'Cravings Box',
        descripction: 'Burger',
        price: "\$120"),
    fastmodel(
        image: 'assets/lamb chops!.jpg',
        name: 'Lamp Meat',
        descripction: 'Asian food',
        price: "\$120"),
    fastmodel(
        image: 'assets/fries.jpg',
        name: 'Fries',
        descripction: 'fast food',
        price: "\$25"),
  ];

  List<FoodModel> food = [];
  databaserepo repo = databaserepo();

  Future<void> init(String name,String des,int qu) async {
    await repo.initDB();
    repo.insertfood(name, des, 0, qu, Uint8List(10));
    emit(FastInitial());

    food = await repo.fatchfood();
    if (food.isEmpty) {
      emit(Fastempty());
    } else {
      emit(Fastloaded());
    }
  }

}
