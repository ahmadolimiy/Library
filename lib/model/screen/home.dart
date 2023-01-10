import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:morasel/controller/homeController.dart';
import 'package:morasel/controller/uploadcontroller.dart';

import 'package:morasel/model/screen/uploaditem.dart';


import 'package:transparent_image/transparent_image.dart';

import '../widget/item.dart';



class Home extends StatelessWidget {

 var controller = Get.find<UploadController>() ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
          leading:
          FloatingActionButton(

              onPressed:  (){
                controller.cheq=0;
                Get.to(UploadItem()) ;
              }, child :Icon(Icons.park)),
          leadingWidth: 75,
          title: Text('العليمي للقرطاسية'),centerTitle: true,
        actions: [
          ]),

      body: Item()



    );
  }
}
