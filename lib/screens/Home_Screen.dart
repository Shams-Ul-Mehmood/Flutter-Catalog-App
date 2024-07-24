import 'package:catalog_app/widgets/DrawerWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget
{
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext buildContext)
  {
    return Scaffold(
      primary: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        primary: true,
        backgroundColor: Colors.black87,
        titleSpacing: 9,
        centerTitle: true,
        elevation: 10,
        shadowColor: Colors.grey,
        title: Text("Home Screen", softWrap: true, style: TextStyle( color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold ),),
      ),
      body: Center(child: Text("Home", style: TextStyle( color: Colors.black87, fontSize: 30, fontWeight: FontWeight.bold ),)),
      drawer: DrawerWidget(),
    );
  }
}