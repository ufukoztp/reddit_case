import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../controllers/home_controller.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(Controller());

  @override
  void initState() {
    // TODO: implement initState
    controller.getContent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 30.w,
        leading: Row(
          children: [
            SizedBox(width: 10,),
             Container(
              height: 4.h,
              width: 20.w,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Center(child: Text("Home",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),),
            ) ,
          ],
        ),

        actions: [

        ],
      ),
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child:Obx(() =>  Column(
          children: List.generate(controller.content.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(top:16.0),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:16.0,top: 16.0),
                      child: Text(controller.content[index].title??"",style: TextStyle(fontWeight: FontWeight.w600),textAlign: TextAlign.start,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:16.0,top: 16.0,bottom: 10),
                      child: Text(controller.content[index].desc??"",style: TextStyle(fontWeight: FontWeight.w200, fontSize: 12),),
                    ),
                    controller.content[index].thumbnail !="self"&&controller.content[index].thumbnail != null?
                    Padding(
                      padding: const EdgeInsets.only(left:16.0,top: 16.0,bottom: 10),
                      child: Container(
                        height: 200,
                        width: 350,
                        decoration:  BoxDecoration(
                            image: DecorationImage(image: NetworkImage(controller.content[index].thumbnail!))
                        ),
                      ),
                    ):Container(),

                  ],
                ),
              ),
            );
          }),
        )),
      ),
    );
  }
}
