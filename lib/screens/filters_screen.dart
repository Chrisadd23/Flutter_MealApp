import 'package:flutter/material.dart';
import 'package:flutter_delimeals/widget/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({ Key? key }) : super(key: key);

  static const String routeName = "/filters";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Your Filters")),),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Filters!'),
      ),
    );
  }
}