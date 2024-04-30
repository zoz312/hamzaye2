import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/dashboard/controller/cubit/dashboard_cubit.dart';

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
            appBar: AppBar(backgroundColor: Color(0xffD84012)),
            backgroundColor: Color(0xffFFF2BC),
            body: PageView(
              controller: controller.pagecontroller,
              onPageChanged: controller.onChangeTabIndex,
                children: [Center(child: Text("User 1 ")), Center(child: Text("home 2")), Center(child: Text("Services 3"))]),
            bottomNavigationBar: BottomNavigationBar(backgroundColor:Color(0xffD84012) ,
 
              showSelectedLabels: true,
              onTap: controller.onChangeTabIndex,
              currentIndex:controller.SelectTapIndex ,
                unselectedItemColor: Colors.black,
                unselectedLabelStyle:
                    TextStyle(fontSize: 15, color: Colors.redAccent),
                    selectedItemColor: Color(0xffFFF2BC) ,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: '1'
                  ),
                  BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: '2'),
                  BottomNavigationBarItem(icon: Icon(Icons.design_services),label: '3')
                ]),
          );
        },
      ),
    );
  }
}
