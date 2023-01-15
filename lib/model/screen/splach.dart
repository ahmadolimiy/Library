import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:morasel/model/screen/categeory.dart';

class splach extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: LiquidSwipe(
          pages: [
            customContainer(
                'بالكتاب تبنى الأمم',
                "images/lib1.jpg",
                '01'),
            customContainer(
                'إقرأ لترتقي',
                "images/lib2.jpg",
                '02'),
            customContainer(
                'الحكمة هي السبيل',
                "images/lib3.jpg",
                '03'),
          ],
        ),
      ),
    );
  }



  Widget customContainer( String text, String images, String pgNum) {
    return InkWell(
      onTap: (){
        Get.to(Categories()) ;
      },
      child: Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
             image:AssetImage(images),
            fit: BoxFit.fill
          )
        ),

        child: Column(
          children: [
            SizedBox(height: 100),
            Spacer(),
            Container(

              width:Get.width / 1.5,
              alignment: Alignment.center,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
             const SizedBox(height: 100),
            Container(
              padding: EdgeInsets.only(bottom: 20, left: 20),
              alignment: Alignment.centerLeft,
              width:Get.width,
              child: Text(
                pgNum,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}