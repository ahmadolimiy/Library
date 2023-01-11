



import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as storage;


class HomeController extends GetxController {
 var snapshot= FirebaseFirestore.instance.collection('imageurl').snapshots() ;

 String? name  ;
String? price  ;
String? url ;
String? desc ;
 String? coll ;
setDataImage (gname , gprice , gurl, gdesc, doc) {
 name=gname ;
 price=gprice ;
 url=gurl ;
 desc=gdesc ;
 coll=doc ;


}


}
