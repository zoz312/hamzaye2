import 'package:bloc/bloc.dart';
import 'package:hamzawyapp/features/auth/italinfood/model/itilainmodel.dart';
import 'package:meta/meta.dart';

part 'itailen_state.dart';

class ItailenCubit extends Cubit<ItailenState> {
  ItailenCubit() : super(ItailenInitial());
  List data = [
    itilanModel(
        image: 'assets/Italianfood.jpg',
        name: 'Italian food',
        descripction: 'itailn',
        price: "\$70"),
    itilanModel(
        image: 'assets/Italianfood.jpg',
        name: 'Italian food',
        descripction: 'itailn',
        price: "\$70"),
    itilanModel(
        image: 'assets/Italianfood.jpg',
        name: 'Italian food',
        descripction: 'itailn',
        price: "\$70"),
    itilanModel(
        image: 'assets/Italianfood.jpg',
        name: 'Italian food',
        descripction: 'itailn',
        price: "\$70"),
    itilanModel(
        image: 'assets/Italianfood.jpg',
        name: 'Italian food',
        descripction: 'itailn',
        price: "\$70"),
    itilanModel(
        image: 'assets/Italianfood.jpg',
        name: 'Italian food',
        descripction: 'itailn',
        price: "\$70"),
        itilanModel(image: 'assets/Italianfood.jpg', name: 'Italian food',descripction:'itailn',price: "70"),
itilanModel(image: 'assets/Italianfood.jpg', name: 'Italian food',descripction:'itailn',price: "\$70"),
  ];
}
