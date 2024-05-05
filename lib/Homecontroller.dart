import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class favouriteController extends GetxController {
  List<String> fruitList =
      ['Apple','Orange','banana','Strawberry','Mango'].obs;
  List<dynamic> tempFruitList = [].obs;

  Addfavourite(String value){
    tempFruitList.add(value);
  }
  removefavourite(String value){

    tempFruitList.remove(value);
  }
}
