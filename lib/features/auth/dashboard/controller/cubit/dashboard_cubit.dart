import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardChangeloading());
 
  int SelectTapIndex = 0;
  final PageController pagecontroller = PageController();
  void onChangeTabIndex(int index) {
    SelectTapIndex = index;
    pagecontroller.jumpToPage(SelectTapIndex);
    emit(DashboardChangeloading());
  }
}
