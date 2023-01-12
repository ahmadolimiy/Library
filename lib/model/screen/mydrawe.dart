import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:morasel/binding/bind.dart';
import 'package:morasel/model/screen/categeory.dart';


class MyDrawer extends StatefulWidget {
  static String routeName = '/drawer';

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff4DBFF5),
                Color(0xff2B75EC),
              ]),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      IconButton(
                        alignment: Alignment.topRight,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close),
                        color: Colors.white,
                        iconSize: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                     Padding(
                      padding: EdgeInsets.only(top: 18, left: 10),
                      child: CircleAvatar(
                        radius: 30,
                       child: ClipRRect(
                           child: Image.asset('images/ahmad.jpg'),
                         borderRadius:BorderRadius.circular(50),
                       )
                    )),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('العليمي',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                          // style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontWeight: FontWeight.w400,fontSize: 24,color: Color(0xffFFFFFF)),),
                         // Text('California',style: GoogleFonts.openSans(fontStyle: FontStyle.normal,fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xffF2F2F2)),),
                        ],
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 70),
                const Divider(
                  thickness: 2.2,
                  color: Color(0xffFFFFFF),
                  indent: 35,
                  endIndent: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35,top: 20),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){

                          //Navigator.of(context).pushNamed(ProductDetail.routeName);
                        },
                        child: ListTile(
                          title: Text('Shop'),
                        ),
                      ),
                      InkWell(


                        onTap: (){
                          Get.offAll(Categories(),binding:Bind()) ;

                        },
                        child: ListTile(
                          title: Text('Categories'),
                        ),
                      ),
                      ListTile(
                       title: Text('My Cart'),
                      ),
                      ListTile(
                        title: Text('Wishlist'),
                      ),
                      ListTile(
                        title: Text('Track Order'),
                      ),
                      ListTile(
                        title: Text('Support'),
                      ),
                      ListTile(
                        title: Text('FAQ'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70),
                const Divider(
                  thickness: 2.2,
                  color: Color(0xffFFFFFF),
                  indent: 35,
                  endIndent: 60,
                ),
                SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.only(left: 35,top: 20),
                  child: ListTile(
                 //   title: Text('Logout',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
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
