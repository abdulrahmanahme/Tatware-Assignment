import 'package:flutter/material.dart';
import 'package:tatware/view/get_start1_screen.dart';
import 'package:tatware/view/home_screen.dart';
import 'package:tatware/view/profile_screen.dart';
import 'package:tatware/view/start_screen.dart';
import 'package:tatware/view/wallet_screen.dart';

import 'package:tatware/view_model/cubit.dart';
import 'package:tatware/view_model/states.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutScreen extends StatefulWidget {
  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
        return  
          BlocProvider(
             create: (BuildContext context) => LayoutCubit(),
            child: BlocConsumer<LayoutCubit ,LayoutStatus>(
              listener: (context, state) {
              },
              builder: (context, state) {
                var cubit = LayoutCubit.get(context);
            return SafeArea(
                child: Scaffold(
                  extendBody: true,
                  body: cubit.screen[cubit.currentPage],
                  bottomNavigationBar: BottomAppBar(
                    // shape: CircularNotchedRectangle(),
                    notchMargin: 12,
                    child: Container(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        
                          cubit.bottomBar(
                            numberPage: 0,
                            currentscreen:ChatSCreen(),
                            icon:  AssetImage(
                                "assets/image/Home/Star.png"),
                          ),
                          
                           cubit.bottomBar(
                            numberPage: 1,
                            currentscreen:HomeScreen(),
                            icon: AssetImage("assets/image/Home/Home.png"),
                          ),
                          SizedBox(width: 15),
                          cubit.bottomBar(
                            numberPage: 2,
                            currentscreen: WalletScreen(),
                            // icon: Icons.mail,
                            icon: AssetImage("assets/image/Home/Wallet.png"),
                          ),
                          cubit.bottomBar(
                            numberPage: 3,
                            currentscreen:  ProfileScreen(),
                            // icon: Icons.person,
                            // iconName: 'Setting',
                            icon: AssetImage("assets/image/Home/Profile.png"),
                          ),
                        ],
                      ),
                    ),
                  ),
               
                ),
              );
              }
            
                  ),
          )
        ;
  
  }
}
