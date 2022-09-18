import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getx_details/controller/tap_controller.dart';
import 'package:get/instance_manager.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //instannce of TapController with getx
    TapController controller = Get.put(TapController());
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //gesture detector uses for tap method uses
            GestureDetector(
              onTap: () {
                //clickable to call increase method
                controller.increase();
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
                  "tap",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {},
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
                  "tap",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {},
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
                  "tap",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {},
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
                  "tap",
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
