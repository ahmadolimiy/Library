import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:morasel/controller/homeController.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:get/get.dart';

import '../screen/itemdetils.dart';




class StackItem extends StatelessWidget {
  HomeController controllerr =Get.find<HomeController>() ;
  int index ;
  AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot ;
   StackItem( {required this.index, required this.snapshot, Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
     return
       Container(
         padding: EdgeInsets.only(left: 4,right: 4),
         child: InkWell(
           onTap: (){
             //send the number collection
              controllerr.setDataImage(snapshot.data?.docs[index].get('name'), snapshot.data?.docs[index].get('price'),
                  snapshot.data?.docs[index].get('url'), snapshot.data?.docs[index].get('desc'),snapshot.data?.docs[index].id);
             Get.to(Itemetials()) ;
           },
           child: Stack(
    children: [
     ClipRRect(
// clip the image to a circle
borderRadius: BorderRadius.circular(20),
child: FadeInImage.memoryNetwork(
placeholder: kTransparentImage,
image: snapshot.data?.docs[index].get('url') ,
    fit: BoxFit.cover
),
) ,
    Positioned(
      left: 10,
      child:  Text("${snapshot.data?.docs[index].get('price')} JD",
      style: const TextStyle(color: Colors.white70, fontSize: 18,fontWeight: FontWeight.w700)),
    ),
     Positioned(
    top: 17.0,
    left: 16,
    child: Text("${snapshot.data?.docs[index].get('name')}",
    style: TextStyle(color: Colors.white, fontSize: 22)),
    ),

    ],
           //)
    ),
         ),
       ) ;
  }
}






