import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:morasel/model/widget/stackItem.dart';
import 'package:morasel/controller/homeController.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../controller/uploadcontroller.dart';

class Item extends StatelessWidget {
  HomeController controller1 =Get.find<HomeController>() ;
  UploadController controller = Get.find<UploadController>();
  @override
  Widget build(BuildContext context) {
    return
      StreamBuilder(
          stream: controller1.snapshot ,
          builder: (context,snapshot) {
            return
              !snapshot.hasData ? CircularProgressIndicator():
              ListView.builder(
                itemCount: snapshot.data?.docs.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 37, right: 37, top: 20),
                    child: Container(
                      height: 120,
                      width: 302,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F6),
                        borderRadius: BorderRadius.all(
                            Radius.circular(25)),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(top: 0, left: 0),
                          child:  StackItem(index: index, snapshot: snapshot,)

                        // style: GoogleFonts.oswald(
                        //     fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),

                  );
                },
              );
          } ,
    );
  }
}
