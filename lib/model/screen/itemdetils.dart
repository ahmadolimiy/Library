import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morasel/binding/bind.dart';
import 'package:morasel/controller/homeController.dart';
import 'package:morasel/controller/uploadcontroller.dart';
import 'package:morasel/model/screen/mydrawe.dart';
import 'package:transparent_image/transparent_image.dart';

import 'categeory.dart';





class Itemetials extends StatelessWidget {
  const Itemetials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   UploadController controller = Get.find<UploadController>() ;
   HomeController Hcontroller=Get.find<HomeController>() ;
    return Scaffold(
      appBar: AppBar(title: Text('اهلا بك :) '),centerTitle: true
        ,

      actions: [
        FloatingActionButton(
            onPressed: (){
              Get.dialog(
                AlertDialog(

                  title: const Text('حذف العنصر '),
                  content: const Text('هل انت متاكد من حذف العنصر '),
                  actions: [
                    TextButton(
                      child: const Text("الغاء"),
                      onPressed: () => Get.back(),
                    ),TextButton(
                      child: const Text("نعم"),
                      onPressed: () {
                        controller.deleteitem(Hcontroller.coll.toString());
                        Get.offAll(Categories(),binding: Bind()) ;
                      },
                    ),
                  ],
                )

              );

            },
            child: Icon(Icons.delete))
      ],),
      body: GetBuilder<HomeController>(
      builder: (con)=>
          Column (
            children: [
              Text(con.name.toString()) ,
        Text(con.price.toString()),
              Container(
                padding: EdgeInsets.only(left: 50, right: 50,bottom: 50,top: 10
                ),
                height: 500,

                child: ClipRRect(
// clip the image to a circle
                  borderRadius: BorderRadius.circular(20),
                  child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: con.url.toString(),
                      fit: BoxFit.cover
                  ),
                ),
              ) ,
              Text(con.desc.toString()) ,



            ],
          ),
      )




    );
  }
}
