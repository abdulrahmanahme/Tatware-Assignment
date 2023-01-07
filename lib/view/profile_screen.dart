import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 1.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    ' ProfilePage',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}