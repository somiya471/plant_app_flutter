import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/body.dart';

import '../../components/my_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(icon: Image.asset("assets/icons/menu.png"),onPressed: (){},),
      ),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}



