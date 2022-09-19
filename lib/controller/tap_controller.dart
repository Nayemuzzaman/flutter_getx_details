import 'package:get/get_state_manager/get_state_manager.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;

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
}
