import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plants.dart';
import 'package:plant_app/screens/home/components/recommends_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended"),
          RecommendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants"),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)





          
          
        ],
      ),
    );
  }
}














