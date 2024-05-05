import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Homecontroller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<String> fruitList = ['Apple', 'Orange', 'banana', 'Strawberry', 'Mango'];
  // List<String> tempFruitList = [];

  favouriteController favoitrController = Get.put(favouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: favoitrController.fruitList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  if (favoitrController.tempFruitList
                      .contains(index.toString())) {
                    favoitrController.tempFruitList.remove(index.toString());
                  } else {
                    favoitrController.tempFruitList.add(index.toString());
                  }
                  setState(() {});
                  print(favoitrController.tempFruitList);
                },
                title: Text(favoitrController.fruitList[index].toString()),
                trailing: Icon(
                  Icons.favorite,
                  color:
                      favoitrController.tempFruitList.contains(index.toString())
                          ? Colors.red
                          : Colors.white,
                ),
              ),
            );
          }),
    );
  }
}
