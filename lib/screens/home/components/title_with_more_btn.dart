import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithCustomLine extends StatelessWidget {
  const TitleWithCustomLine({Key? key,required this.string}) : super(key: key);

  final String string;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              string,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                margin: EdgeInsets.only(right: kDefaultPadding / 4),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),))

        ],
      ),
    );
  }
}

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({Key? key,
    required this.title, this.press }) : super(key: key);

  final String title;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomLine(string: title),
          Spacer(),
          TextButton(onPressed: (){},
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(kPrimaryColor),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
              child: Text("More",style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }
}