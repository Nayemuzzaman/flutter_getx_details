import 'package:flutter/material.dart';
import 'package:flutter_getx_details/controller/list_controller.dart';
import 'package:flutter_getx_details/controller/tap_controller.dart';
import 'package:flutter_getx_details/my_home_page.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //here also show the value
    // TapController controller = Get.find();
    ListController listController = Get.put(ListController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
      ),
      // we don't need getbuilder because value come another page not update here immediately
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      width: double.maxFinite,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF89dad0),
                      ),
                      child: Center(
                          child: Text(
                        // to get obs value use y.value not just y
                        "Total: " + Get.find<TapController>().z.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      width: double.maxFinite,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF89dad0),
                      ),
                      child: Center(
                          child: Text(
                        // to get obs value use y.value not just y
                        "Y value: " +
                            Get.find<TapController>().y.value.toString(),
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ],
                )),
            // y value increase button
            GestureDetector(
              onTap: () {
                //Get.to(() => MyHomePage());
                Get.find<TapController>().increaseY();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(
                    child: Text(
                  "Increase Y",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
              ),
            ),

            // x value get
            GestureDetector(
              onTap: () {
                Get.to(() => MyHomePage());
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(
                    child: Text(
                  //you may use controller.x.toString() for value or use next one
                  "x value: " + Get.find<TapController>().x.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
              ),
            ),

            GestureDetector(
              onTap: () {
                Get.find<TapController>().totalXY();
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(
                    child: Text(
                  "Total X+Y value ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
            
            GestureDetector(
              onTap: () {
                Get.find<ListController>().setValues(Get.find<TapController>().z);
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF89dad0),
                ),
                child: Center(
                    child: Text(
                  "Save Total ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
