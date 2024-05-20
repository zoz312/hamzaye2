import 'dart:math';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../model/QuntityModel/qunmod.dart';
import '../../model/rebo/databaseRepo.dart';

part 'food_state.dart';

class FoodCubit extends Cubit<FoodState> {
  FoodCubit() : super(Foodloading()) {
    init();
  }
  List<FoodModel> food = [];
  databaserepo repo = databaserepo();

  Future<void> init() async {
    await repo.initDB();
    //repo.insertfood('name', 'des', 0, 98, Uint8List(10));
    emit(Foodloading());

    food = await repo.fatchfood();
    if (food.isEmpty) {
      emit(Foodempty());
    } else {
      emit(Foodloaded());
    }
  }

  void addfav(int id, int value) {
    repo.updateFavorite(value, id);
    init();
    emit(Foodloaded());
  }

  void addcart(int id, int value) {
    repo.updatcart(value, id);
    init();
    emit(Foodloaded());
  }
}
