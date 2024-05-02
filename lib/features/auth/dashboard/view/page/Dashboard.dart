import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/dashboard/controller/cubit/dashboard_cubit.dart';
import 'package:hamzawyapp/features/auth/dashboard/modul/food/view/page/food.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardCubit>(
      create: (context) => DashboardCubit(),
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          DashboardCubit controller = context.read<DashboardCubit>();
          return Scaffold(
            appBar: AppBar(actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'newfood');
                  },
                  icon: Icon(CupertinoIcons.add))
            ], backgroundColor: Color(0xffD84012)),
            backgroundColor: Color(0xffFFF2BC),
            body: PageView(
                controller: controller.pagecontroller,
                onPageChanged: controller.onChangeTabIndex,
                children: [
                  foodPage(),
                  Center(child: Text("home 2")),
                  Center(child: Text("Services 3"))
                ]),
            bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Color(0xffD84012),
                showSelectedLabels: true,
                onTap: controller.onChangeTabIndex,
                currentIndex: controller.SelectTapIndex,
                unselectedItemColor: Colors.black,
                unselectedLabelStyle:
                    TextStyle(fontSize: 15, color: Colors.redAccent),
                selectedItemColor: Color(0xffFFF2BC),
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.food_bank_outlined), label: '1'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite), label: '2'),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.cart), label: '3')
                ]),
          );
        },
      ),
    );
  }
}
