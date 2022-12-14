import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tatware/view/home_screen.dart';
import 'package:tatware/view/layout_sereen.dart';

class GetStartScreen extends StatefulWidget {
  @override
  State<GetStartScreen> createState() => _GetStartScreenState();
}

class _GetStartScreenState extends State<GetStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                height: 2.h,
              ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 1),
                          child: Text(
                            'Hi, My name is',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          ' Oranobot  ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
        
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text(
                        'I will always be there to help and assist you.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                            SizedBox(
                      height: 2.h,
        
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 70),
                      child: Text(
                        'Say Start To go to Next',
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
                height: 29.h,
                width: MediaQuery.of(context).size.width - 80.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    //  color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage('assets/image/GetStart/Path.png'),
                        fit: BoxFit.fill)),
              ),
              Container(
                height: 38.h,
                width: 60.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/GetStart/repot.png'),
                      fit: BoxFit.contain),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff16919b),
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 50, right: 50),
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LayoutScreen()),
                  );
                },
              ),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    // Icon(MyFlutterApp.blur_circular),
                     ImageIcon(AssetImage('assets/image/startScreen/earth1.png')),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'English',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
