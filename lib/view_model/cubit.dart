import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tatware/view/get_start1_screen.dart';
import 'package:tatware/view/home_screen.dart';
import 'package:tatware/view/profile_screen.dart';
import 'package:tatware/view/start_screen.dart';
import 'package:tatware/view/wallet_screen.dart';
import 'package:tatware/view_model/states.dart';

class LayoutCubit extends Cubit<LayoutStatus> {
  LayoutCubit() : super(InitialLayout());
  static LayoutCubit get(context) => BlocProvider.of(context);
  int currentPage = 0;
  List<Widget> screen = [
  ChatSCreen(),
   HomeScreen(),
    WalletScreen(),
     ProfileScreen(),
  ];




  int currentIndex = 0;
  Widget bottomBar(
      {int? numberPage,
      Widget? currentscreen,
      ImageProvider<Object>? icon,
      String? iconName}) {
    return MaterialButton(
      minWidth: 20,
      onPressed: () {
        currentPage = numberPage!;
        currentscreen = currentscreen;
        emit(BottomState());
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ImageIcon(
              icon,
              color: currentPage == numberPage ? Colors.cyan : Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
