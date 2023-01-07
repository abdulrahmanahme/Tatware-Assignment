import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tatware/component/component.dart';
import 'package:tatware/icons/my_flutter_app_icons.dart';
import 'package:tatware/model/user_model.dart';
import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
 
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            // backgroundColor: Colors.transparent,
            radius: 5.0,
            backgroundImage: AssetImage('assets/image/man.png'),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Oranos',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              '.',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xff16919b),
              ),
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.grey,
            size: 30,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 1.h,
            ),
             Row(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: const[
                  Text(
                        '  Recommended Experts ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Icon(Icons.more_horiz,color: Colors.grey,),
                      )
               ],
             ),
              SizedBox(
              height: 1.h,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CardWidget(
                    name: 'Abdo',
                    image:'assets/image/man.png',
                    checkbox: 1,
                  ),
                ),
                   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CardWidget(
                    name: 'Nada',
                    image:'assets/image/woman.png',
                    checkbox: 0,
                  ),
                ),
               
              ],
            ),
             SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Online Experts ',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: 'Poppins',
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Icon(Icons.more_horiz,color: Colors.grey,),
                      )
                ],
              ),
            ),
             SizedBox(
              height: 1.h,
            ),
            Container(
              height: 20.h,
              width: double.infinity,
              // color: Colors.amber,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    storybutton(userData[index], context),
                separatorBuilder: (context, index) => SizedBox(
                  height: 8.0,
                ),
                itemCount: userData.length,
              ),
            ),
             SizedBox(
              height: 18.h,
            ),
          
             Padding(
               padding: const EdgeInsets.only(bottom: 50),
               child: GestureDetector(
                onTap: (){
            draggleSheet(context:context);


                },
                 child: Container(
                           width: 50,
                           height: 10,
                           decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                           ),
                         ),
               ),
             ),
           
          ],
        ),
      ),
    );
  }
  
}
  



 