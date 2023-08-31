import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIconsCard extends StatelessWidget {
  const ImageAndIconsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding*3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding *3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        onPressed: (){
                          Navigator.pop(context);
                        }, icon: Image.asset("assets/icons/back_arrow.png")),
                  ),
                  Spacer(),
                  IconCard(icon: "assets/icons/sun.png"),
                  IconCard(icon: "assets/icons/icon_2.png"),
                  IconCard(icon: "assets/icons/icon_3.png"),
                  IconCard(icon: "assets/icons/icon_4.png"),

                ],
              ),
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(offset: Offset(
                        0,10
                    ),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29))
                  ],
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(63),bottomLeft: Radius.circular(63)),
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/img.png")
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}