import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/image_and_icons_card.dart';

import 'icon_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIconsCard(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                Text("Angelica",
                    style: Theme.of(context).textTheme.headline4!.copyWith(color: kTextColor,fontWeight: FontWeight.bold )),
                Spacer(),
                Text("\$440",style: Theme.of(context).textTheme.headline5!.copyWith(color: kPrimaryColor),)


              ],

            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Russia",style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor,
                fontWeight: FontWeight.w300
              ),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding,),
          Row(
            children: [
              SizedBox(
                width: size.width/2,
                height: 84,
                child: TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20))
                    ),
                    ),
                  ),
                  onPressed: (){}, child: Text(
                  "Buy Now",style: TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
                ),
                ),
              ),
              Expanded(
                  child: TextButton(
                    onPressed: (){},
                    child: Text("Description",style: TextStyle(color: Colors.black,fontSize: 16),),
                  ))
            ],
          ),
          SizedBox(height: kDefaultPadding*2,)
            ],
      ),
    );
  }
}






