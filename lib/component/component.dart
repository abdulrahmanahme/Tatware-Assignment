import 'package:flutter/material.dart';
import 'package:tatware/model/user_model.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget storybutton(User? userModel, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Stack(children: [
          CircleAvatar(
            radius: 39,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 35.0,
              backgroundColor: Color(0xffEFEFEF),
              //  backgroundImage: AssetImage(userModel!.profileImageUrl!),
              //  'assets/image/man.png'
            ),
          ),
          Positioned(
            left: 60.0,
            top: 6.0,
            child: const CircleAvatar(
              radius: 5,
              backgroundColor: Colors.green,
            ),
          ),
        ]),
        SizedBox(
          height: 2,
        ),
        Container(
          child: Text(
            userModel!.name!,
            style: TextStyle(
              height: 1.1,
              fontFamily: 'jannah',
            ),
          ),
        ),
      ],
    ),
  );
}

class CardWidget extends StatefulWidget {
  CardWidget({this.name, this.image,this.checkbox});
  String? name;
  String? image;
  bool isFavorite = false;
 
 bool isChecked=false;
 
 int ?checkbox;
  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Hero(
        tag: 'image',
        transitionOnUserGestures: true,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            height: 222,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Material(
              type: MaterialType.transparency,
              child: Expanded(
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 120.0,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(widget.image!),

                                // AssetImage('assets/image/Background.png'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                //
                              )),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                      
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.star,
                              size: 30,
                              color: Colors.amberAccent[400],
                            ),
                            Text(
                              '(3.0)',
                              style: TextStyle(
                                fontFamily: 'Poppins',

                                // fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            Spacer(),
                            SizedBox(
                              width: 8,
                            ),
                             
                          
 
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  widget.isFavorite = !widget.isFavorite;
                                });
                              },
                              icon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.favorite,
                                    size: 30,
                                    color: widget.isFavorite
                                        ? Colors.red
                                        : Colors.grey),
                              ),
                            )
                          ],
                        ),
              
    
    
    
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                               
                              
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15,
                                    right: 5,
                                    // top: 55,
                                  ),
                                  child: Text(
                                    widget.name!,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',

                                      // fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, right: 5),
                                  child: Text(
                                    'Supply chain',
                                    // '70 EGP',
                                    style: TextStyle(
                                      // fontFamily: 'Lobster-Regular',
                                      fontFamily: 'Poppins',

                                      // fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
      height: 20,
      width: 20,
      child: Expanded(
        child: Checkbox(
      checkColor: Colors.white,
      // fillColor: Colors.blue,
      value: widget.isChecked,
      onChanged: (bool? value) {
        setState(() {
          widget.isChecked = value!;
        });
      },
    ),
      ),
    ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 12,
                        ),
                        // Button(
                        //   text: 'Add to cart',
                        //   color: Colors.green,
                        //   textcolor: Colors.white,
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> draggleSheet(
    {BuildContext? context, bool pressAttention = false}) {
  return showMaterialModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context!,
    builder: (context) => SingleChildScrollView(
      child: Container(
        height: 80.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 50,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          
            
            ProfileButton(
              icon: AssetImage('assets/image/Group1.png'),
              name: 'Information Technology',
              type: '23 Experts',
            ),
            ProfileButton(
              icon: AssetImage('assets/image/Group2.png'),
              name: 'Supply chain',
              type: '12 Experts',
            ),
             ProfileButton(
              icon: AssetImage('assets/image/Group3.png'),
              name: 'Security',
              type: '14 Experts',
            ),
            ProfileButton(
              icon: AssetImage('assets/image/Group4.png'),
              name: 'Human Resoure',
              type: '8 Experts',
            ),
             ProfileButton(
              icon: AssetImage('assets/image/Group5.png'),
              name: 'Immigration',
              type: '18 Experts',
            ),
             ProfileButton(
              icon: AssetImage('assets/image/Group6.png'),
              name: 'Translation',
              type: '3 Experts',
            ),

           
          ],
        ),
      ),
    ),
  );
}

class ProfileButton extends StatelessWidget {
  ImageProvider<Object>? icon;
  String? name;
  String? type;

  ProfileButton({this.icon, this.name, this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          side: BorderSide(
            width: 0.2,
            color: Colors.grey,
          ),
          primary: Colors.white,
          // onPrimary: Colors.grey,

          padding: EdgeInsets.only(
            top: 10,
            bottom: 9,
          ),

          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
              height: 45,
              width: 60,
              decoration: BoxDecoration(
                image: DecorationImage(image: icon!, fit: BoxFit.contain),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name!,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    // fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.center,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        type!,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          // fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
