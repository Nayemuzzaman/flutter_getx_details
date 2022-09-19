import 'package:flutter/material.dart';
import 'package:flutter_getx_details/helper/init_controllers.dart' as di;
import 'package:flutter_getx_details/helper/init_dependancy.dart';
import 'package:flutter_getx_details/my_home_page.dart';
import 'package:get/get.dart';

Future<void> main() async {
  // binding happens here 
  //WidgetsFlutterBinding.ensureInitialized(); /*when use InitDependency, no needed*/
  //await di.init();  /*when use InitDependency, no needed*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitDependency(), // when use InitDependency class rather than init_controller.dart init method()
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}
