import 'package:flutter_getx_details/controller/list_controller.dart';
import 'package:flutter_getx_details/controller/tap_controller.dart';
import 'package:get/get.dart';

class InitDependency implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => TapController());
    Get.lazyPut(() => ListController());
  }
}
