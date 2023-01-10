import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:morasel/binding/model/widget/stackItem.dart';
import 'package:morasel/controller/homeController.dart';

import 'package:transparent_image/transparent_image.dart';



class Item extends StatelessWidget {

 // HomeController controller =Get.find<HomeController>() ;
  @override
  Widget build(BuildContext context) {
    return GetBuilder <HomeController>(
      builder: (controller)=>
       StreamBuilder(
          stream: controller.snapshot ,
          builder: (context,snapshot) {
            return

              !snapshot.hasData ? Center(
                child: CircularProgressIndicator(),
              ) :
            StaggeredGridView.
            countBuilder(
                staggeredTileBuilder: (index) =>
                    StaggeredTile.count(1, index.isEven ? 1.2 : 1.6),
                //cross axis cell count
                mainAxisSpacing: 10,
                // vertical spacing between items
                crossAxisSpacing:8,
                // horizontal spacing between items
                crossAxisCount: 2,
                // no. of virtual columns in grid
                itemCount:  snapshot.data?.docs.length,
                itemBuilder: (context, index) =>
                    StackItem(index: index, snapshot: snapshot,)

            );
          } ),
    );
  }
}
