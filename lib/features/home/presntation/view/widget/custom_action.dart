import 'package:book_app/features/home/data/model/Bookmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utility/lunch_custom_url.dart';
import '../../../../../core/widget/custom_bottom.dart';

class CustomAction extends StatelessWidget {
  Bookmodel bookmodell ;


  CustomAction({required this.bookmodell});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: customBottom(
              text: 'Free',
              backgroundcolor: Colors.white,
              fontwight: FontWeight.w900,
              textcolor: Colors.black,
              borderredus: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),

            ),
          ),
          Expanded(
            child: customBottom(
              backgroundcolor: Color(0xffEF8262),
              textcolor: Colors.white,
              fontwight: FontWeight.bold,
              text: 'Free preview',
              borderredus: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),

              ),
              function: () async {
                lunchCustomUrl(context,bookmodell.volumeInfo!.previewLink);
              },
            ),
          )
        ],
      ),
    );
  }

}
