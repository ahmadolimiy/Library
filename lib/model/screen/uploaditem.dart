







import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:morasel/binding/bind.dart';
import 'package:morasel/controller/homeController.dart';
import 'package:get/get.dart';
import 'package:morasel/controller/uploadcontroller.dart';

import 'categeory.dart';
import 'mydrawe.dart';


class UploadItem extends StatelessWidget {


var controller =Get.find<UploadController>() ;
  @override
  Widget build(BuildContext context) {
    String? itemPrice;
    String? itemName ;
    String? desc ;
    int id ;
return  Scaffold (
  appBar: AppBar (title: Text('upload image'),
  actions: [FloatingActionButton(
      onPressed: (){
controller.uploaditem(itemPrice!,itemName!,desc!);
Get.off(Categories(),binding: Bind()) ;
      },
      child:const Text('Done')),],
  ),
  body: SingleChildScrollView(
    child: Container(
      child: Column(
        children: [
          Center(child: IconButton(icon:(Icon(Icons.add)), onPressed: () {
        controller.getimage();
        },
          ),
          ) ,
      Container(
        padding: EdgeInsets.all(20),
        child:  TextField (
          decoration:const InputDecoration(

            hintText: 'Add The Price',
            border: OutlineInputBorder(),
          ),
          onChanged: (price){
            itemPrice=price ;
          },
        ),
      ) ,
          Container(
            padding: EdgeInsets.all(20),
            child:  TextField (

              decoration:const InputDecoration(
                hintText: 'Add The Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (name){
                itemName=name   ;
              },
            ),
          ) ,
          Container(
            padding:const EdgeInsets.all(20),
            child:  TextField (
              decoration:const InputDecoration(
                hintText:'Add The Describtion',
                border: OutlineInputBorder(),
              ),
              onChanged: (description){
                desc=description   ;
              },
            ),
          ) ,
      GetBuilder <UploadController>(builder: (cont){
        return SizedBox(
            height: 150,
            width: 150,
            // there is problem here
            child: cont.cheq==0?const Text('Add the image') : Image.file(cont.image as File) ); })
        ],
            ),
    ),
  )
    );
     }





  }



//
//
// Row(
// children: [
// TextField (
// onChanged: (price){
// itemPrice=price   ;
// },
// ),
// const Text('Price',
// style: TextStyle(fontSize: 50,fontWeight: FontWeight.w700,color: Colors.black),)
// ],
//
// ) ,.

// child: Row (
// children: [
// TextField (
// onChanged: (price){
// itemPrice=price   ;
// },
// ),
// const Text('Price',
// style: TextStyle(fontSize: 50,fontWeight: FontWeight.w700,color: Colors.black),)
//
// ],
// ),