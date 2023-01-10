import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'binding/bind.dart';
import 'model/screen/home.dart';

void main() async {


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp() ;
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: Colors.blue,
initialRoute: '/',
 getPages: [
   GetPage(name: '/', page: ()=>Home(), binding: Bind()) ,
   // GetPage(name: 'addpic', page: null)       ,
 ],
    ) ;
  }
}

