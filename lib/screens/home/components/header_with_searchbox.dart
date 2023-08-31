import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({Key? key,required this.size}) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: kDefaultPadding,right: kDefaultPadding,bottom: 36 + kDefaultPadding),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(36),
                    bottomLeft: Radius.circular(36)
                )),
            child: Row(
              children: [
                Text("Hi Somiya",
                  style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
                Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0,10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23)
                      )
                    ],
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          // suffixIcon: Image.asset("assets/icons/search.png")
                        ),
                        onChanged: (value){},
                      ),
                    ),
                    Image.asset("assets/icons/search.png",height: 20,)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}