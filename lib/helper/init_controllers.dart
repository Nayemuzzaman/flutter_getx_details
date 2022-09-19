import 'package:flutter_getx_details/controller/list_controller.dart';
import 'package:flutter_getx_details/controller/tap_controller.dart';
import 'package:get/get.dart';

//this is call binding 
// binding with two controller 
Future<void> init() async {
  //TapController controller = Get.put(TapController());
  Get.lazyPut(() => TapController());
  Get.lazyPut(() => ListController());
}
