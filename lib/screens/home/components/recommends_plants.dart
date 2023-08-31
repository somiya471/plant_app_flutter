import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(image: "assets/images/image_1.png",title: "Samantha",country: "Russia",press: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));
          },price: 440,),
          RecommendPlantCard(image: "assets/images/image_2.png",title: "Angelica",country: "France",press: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));

          },price: 360,),
          RecommendPlantCard(image: "assets/images/image_3.png",title: "Roger",country: "Australia",press: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));
          },price: 400,),
        ],
      ),
    );
  }
}


class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({Key? key, required this.image, required this.title, required this.country, required this.price, required this.press}) : super(key: key);

  final String image,title,country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding /2,
          bottom: kDefaultPadding *2.5
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  ),
                  boxShadow: [
                    BoxShadow(offset: Offset(0,10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("$title".toUpperCase(),style: Theme.of(context).textTheme.button),
                      Spacer(),
                      Text("\$$price",style: Theme.of(context).textTheme.button!.copyWith(color: kPrimaryColor),)


                    ],

                  ),
                  SizedBox(height: 5,),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "$country".toUpperCase(),style: TextStyle(
                      color: kPrimaryColor.withOpacity(0.5),
                    ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}