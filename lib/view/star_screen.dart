import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StarScreen extends StatelessWidget {
  const StarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 1.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Center(
                  child: Text(
                    '  Star Page',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
