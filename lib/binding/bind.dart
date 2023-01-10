import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morasel/controller/uploadcontroller.dart';
import '../controller/homeController.dart';


class Bind extends Bindings {



  @override
  void dependencies() {
    HomeController controller =Get.put<HomeController>(HomeController()) ;
    UploadController uploadController=Get.put<UploadController>(UploadController()) ;

    // TODO: implement dependencies
  }
}