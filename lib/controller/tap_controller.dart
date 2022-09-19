import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;

  RxInt _y = 0.obs;
  RxInt get y => _y;
  RxInt _z = 0.obs;
  int get z => _z.value;

  void totalXY() {
    _z.value = x + _y.value;
    print(_z.value);
  }

  void increaseX() {
    _x++;
    update();
    print(x);
  }

  void decreaseX() {
    _x--;
    update();
    print(x);
  }

  // when value is obs type no need to update
  void increaseY() {
    _y.value++;
    print(y.value);
  }

  void decreaseY() {
    _y.value--;
    print(y.value);
  }
}
