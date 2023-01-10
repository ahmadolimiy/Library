


import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart'as firestroage ;


import '../model/screen/home.dart';



class UploadController extends GetxController {
  firestroage.Reference? ref;

int cheq=0 ;
  firestroage.FirebaseStorage storage = firestroage.FirebaseStorage.instance;
  File ? image;
  ImagePicker imagepiker = ImagePicker();
  var pikedimage;
  CollectionReference? imgref;


  getimage() async {

    pikedimage = await imagepiker.pickImage(source: ImageSource.camera);
    if (pikedimage!=null){
    image = File(pikedimage?.path);
cheq=1 ;

    update(); }
  }


  uploaditem( String price, String name, String desc) {
    ref = storage.ref('image/${pikedimage.name}');

    ref?.putFile(image!).whenComplete(() async {
      await ref?.getDownloadURL().then((value) {
         imgref?.add({'url': value,'price':price,'name':name,'desc':desc });

        Get.off(Home()) ;
      }
      );
    }
    );

  }

  @override
  void onInit() {
    imgref = FirebaseFirestore.instance.collection('imageurl');

  }


}
