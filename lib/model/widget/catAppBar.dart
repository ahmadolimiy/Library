import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:morasel/model/screen/aboutus.dart';

import '../../controller/uploadcontroller.dart';
import '../screen/uploaditem.dart';





class AppBarCateory extends StatelessWidget {

  UploadController controller = Get.find<UploadController>();
  @override
  Widget build(BuildContext context) {
    return
       Padding(
        padding: const EdgeInsets.only(top: 28, left: 20),
        child: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xff000000)),
          backgroundColor: Color(0xffFFFFFF),
          centerTitle: true,
          title: Text(
            'Categories',
            // style: GoogleFonts.oswald(
            //     fontStyle: FontStyle.normal,
            //     color: Color(0xff000000),
            //     fontSize: 20,
            //     fontWeight: FontWeight.w400),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {

                        controller.cheq=0;
                        Get.to(UploadItem()) ;

                      },
                      icon: Icon(Icons.upload) ),
                  Stack(
                    children: [
                      IconButton(
                        onPressed: () {
                          Get.to(ShoppingScren()) ;

                        },
                        icon: Image.asset('images/imageA.png'),

                      ),
                      Positioned(
                          top: 9.0,
                          right: 11,
                          child: CircleAvatar(
                            radius: 3.5,
                            backgroundColor: Color(0xff2A74EB),
                          )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),

    );
  }
}
