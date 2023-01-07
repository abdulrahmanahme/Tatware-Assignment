import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WalletScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    '  Wallet Page',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
          
        
        ),
      ),
    );
  }
}
