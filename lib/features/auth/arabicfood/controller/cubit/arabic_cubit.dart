import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:hamzawyapp/features/auth/arabicfood/model/arabicmodel.dart';
import 'package:meta/meta.dart';

import '../../../dashboard/modul/food/model/QuntityModel/qunmod.dart';
import '../../../dashboard/modul/food/model/rebo/databaseRepo.dart';

part 'arabic_state.dart';

class ArabicCubit extends Cubit<ArabicState> {
  ArabicCubit() : super(ArabicInitial());
  List data = [
    arabicmodel(
        image: 'assets/Egyptianfood.jpg',
        name: 'molokhia',
        descripction: 'egyption food',
        price: 110),
    arabicmodel(
        image: 'assets/kabab.jpg',
        name: 'Kebab',
        descripction: 'egyption food',
        price: 300),
    arabicmodel(
        image: 'assets/hawashe.jpg',
        name: 'Hawawshi',
        descripction: 'egyption food',
        price: 10),
    arabicmodel(
        image: 'assets/sbank.jpg',
        name: 'spinach',
        descripction: 'egyption food',
        price: 40),
    arabicmodel(
        image: 'assets/tabek.jpg',
        name: 'Lopea',
        descripction: 'egyption food',
        price: 30),
    arabicmodel(
        image: 'assets/hamam.jpg',
        name: 'dove',
        descripction: 'egyption food',
        price: 1000),
  ];

  List<FoodModel> food = [];
  databaserepo repo = databaserepo();

  Future<void> init(String name, String des, int price) async {
    await repo.initDB();
   
    repo.insertfood(name, des, 1, price, Uint8List(10));
    emit(ArabicInitial());

    food = await repo.fatchfood();
    if (food.isEmpty) {
      emit(Arabicempty());
    } else {
      emit(Arabicloaded());
    }
  }
}
