import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';

import '../../model/mainmodel.dart';

part 'mainapp_state.dart';

class MainappCubit extends Cubit<MainappState> {
  MainappCubit() : super(MainappInitial());
 List data = [
  
     mainModel(image: 'assets/Italianfood.jpg', title: 'Italian food',route:'itailn'),
     mainModel(image: 'assets/Arabicfood.jpg',  title: 'Arabic food',route:'abric'),
     mainModel(image: 'assets/Fastfood.jpg', title: 'Fast food',route:'fast'),
    mainModel(image: 'assets/Drinks.jpg', title: 'Drinks',route:'drink'),
  ];
}
