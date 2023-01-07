import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tatware/icons/my_flutter_app_icons.dart';
import 'package:tatware/view/get_start_screen.dart';

class StartScreen extends StatefulWidget {
  @override
  State<StartScreen> createState() => _StartScreenState();
}
 

class _StartScreenState extends State<StartScreen> {
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
  ]);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/image/startScreen/StartImage.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 45.h,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Oranos',
                    style: TextStyle(
                      fontSize: 45,
                  fontFamily: 'Poppins',

                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '.',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff16919b),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 2.h,
              ),
              const Text(
                'Expert From Every planet',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                
                  color: Color(0xff5F5F5F),
                ),
              ),
              Spacer(),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff16919b),
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 120, right: 120),
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                   Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GetStartScreen()),
                        );
                },
              ),
              // Spacer(),
              SizedBox(
                height: 4.h,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15, right: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                         fontFamily: 'Poppins',
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                       
                      },
                      child: const Text(
                        'SignUp',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          color: Color(0xff16919b),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
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
                    // IconImage(),
                    ImageIcon(AssetImage('assets/image/startScreen/earth1.png'),
                    size: 20,),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'English',
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
