
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morasel/controller/homeController.dart';
import 'package:morasel/model/screen/uploaditem.dart';

import '../../controller/uploadcontroller.dart';
import '../widget/catAppBar.dart';
import '../widget/item.dart';
import '../widget/stackItem.dart';
import 'mydrawe.dart';

//boxing way
class Categories extends StatefulWidget {
  static String routeName = 'category';

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  UploadController controller = Get.find<UploadController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70.0),
          child: AppBarCateory()),
      drawer: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 150), child: MyDrawer()),
      body: Column(
        children: [

          SizedBox(height: 20),
          Expanded(
            child: GetBuilder<HomeController>(
    builder: (controller)=>Item()

            ),
          ),
        ],
      ),
    );
  }
}