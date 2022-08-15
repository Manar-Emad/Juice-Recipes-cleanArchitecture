import 'package:clean_architecture/presentation/resources/routes_manager.dart';
import 'package:clean_architecture/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
 // const MyApp({Key? key}) : super(key: key); // Default Constructor

  //named Constructor
  MyApp._internal();
int appState=0;
  static final MyApp _instance = MyApp._internal();// single ton or  single instance

  factory MyApp() => _instance; //factory

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
// class Person{
//   late final String name;
//   late final int age;
//
//   Person(this.name,this.age); //default Constructor
//
//   Person.fromJson(Map<String,dynamic> json){    //named constructor
//     name=json['name'];
//     age=json['age'];
//   }
//
// }
//
// class Test extends StatelessWidget {
//   const Test({Key? key}) : super(key: key);
//
//   void updateAppState(){
//     MyApp().appState=11;
//   }
//
//   void getAppState(){
//     debugPrint(MyApp().appState.toString());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
//
// class Test2 extends StatelessWidget {
//   const Test2({Key? key}) : super(key: key);
//
//   void updateAppState(){
//     MyApp().appState=11;
//   }
//
//   void getAppState(){
//     debugPrint(MyApp().appState.toString());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
//
