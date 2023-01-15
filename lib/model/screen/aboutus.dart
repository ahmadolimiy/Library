import 'package:flutter/material.dart';

import '../widget/catAppBar.dart';
import 'mydrawe.dart';

class ShoppingScren extends StatefulWidget {
  static String routeName = '/shopping';

  @override
  _ShoppingScrenState createState() => _ShoppingScrenState();
}

class _ShoppingScrenState extends State<ShoppingScren> {

  List<String> brand = [
    'ألوان',
    'العليمي',
    'العليمي',
  ];
  List<String> text = [
    'اربد قرب مسجد علياء التل \nمقابل الكازبة  ',
    'اربد قرب مستشفى بسمة \nبجانب الاشارة الضوئية',
    'الفرع الرئيس دوار المدينة الصناعية',
  ];

  List<String> price = [
    '078-8846468',
    '079-9535666',
    '078-8136972',
  ];
  // List<String> route =[
  //   ProductDetail.routeName,
  //   '',
  //   '',
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBarCateory(),
      ),
      drawer: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 300), child: MyDrawer()),
      body: Padding(
        padding: const EdgeInsets.only( top: 20,left: 30,right: 30),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: text.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 280,
                          width: double.infinity,
                          child: InkWell(
                            onTap: (){

                           //   Navigator.of(context).pushNamed(route[index].toString());
                            },
                            child: Card(
                              elevation: 0,
                              color: Color(0xffF6F6F6),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        const CircleAvatar(
                                          radius: 18,
                                          backgroundColor: Color(0xffFFFFFF),
                                          child: ImageIcon(
                                            AssetImage(
                                              'images/imageA.png',
                                            ),
                                            color: Color(0xffED4040),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(left:15),
                                          height: 24,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Color(0xff2A74EB),
                                          ),
                                          child: Text(
                                            brand[index],
                                            // style: GoogleFonts.oswald(
                                            //     fontStyle: FontStyle.normal,
                                            //     color: Color(0xffFFFFFF)),
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Text(
                                          text[index].toString(),
                                          // style: GoogleFonts.oswald(
                                          //     fontStyle: FontStyle.normal,
                                          //     fontWeight: FontWeight.w500,
                                          //     fontSize: 18),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 0),
                                        child: Text(
                                          price[index].toString(),
                                          // style: GoogleFonts.oswald(
                                          //     fontSize: 24,
                                          //     fontWeight: FontWeight.w500,
                                          //     fontStyle: FontStyle.normal,
                                          //     color: Color(0xffB10000)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 90),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 5.5,
                                          backgroundColor: Color(0xffFF0000),
                                        ),
                                        SizedBox(width: 4),
                                        CircleAvatar(
                                          radius: 5.5,
                                          backgroundColor: Color(0xffFF9CD4),
                                        ),
                                        SizedBox(width: 4),
                                        CircleAvatar(
                                          radius: 5.5,
                                          backgroundColor: Color(0xff000000),
                                        ),
                                        SizedBox(width: 4),
                                        CircleAvatar(
                                          radius: 5.5,
                                          backgroundColor: Color(0xffCDCDCD),
                                        ),
                                        SizedBox(width: 4),
                                        CircleAvatar(
                                          backgroundColor: Color(0xff000000),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 4.9,
                                          ),
                                          radius: 5.5,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                height: 72.0,

                child: FloatingActionButton(
                  onPressed: () {

                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),

                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xff4EC1F5),Color(0xff2971EB), ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,

                        ),
                        borderRadius: BorderRadius.circular(110.0)
                    ),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: double.infinity, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                    //      Image(image: AssetImage('assets/images/Icon_filter_outline.png'),color: Colors.white,),
                          SizedBox(width: 10),
                          Text(
                              'Filter',
                              textAlign: TextAlign.center,
                             // style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontWeight: FontWeight.w500,fontSize: 24,color: Colors.white)
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}