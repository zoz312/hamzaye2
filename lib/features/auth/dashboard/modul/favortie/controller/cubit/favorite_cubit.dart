import 'package:bloc/bloc.dart';
import 'package:hamzawyapp/features/auth/dashboard/modul/food/controller/cubit/food_cubit.dart';
import 'package:meta/meta.dart';

import '../../../food/model/QuntityModel/qunmod.dart';
import '../../../food/model/rebo/databaseRepo.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial()) {
    init();
  }
  List<FoodModel> food = [];
  databaserepo repo = databaserepo();

  Future<void> init() async {
    await repo.initDB();

    emit(Favoriteloaded());

    food = await repo.fatchfavfood();
    if (food.isEmpty) {
      emit(Favoriteempty());
    } else {
      emit(FavoriteInitial());
    }
  }

  void addfav(int id, int value) {
    repo.updateFavorite(value, id);

    init();
    FoodCubit.instance.init();
    emit(FavoriteInitial());
  }
}
