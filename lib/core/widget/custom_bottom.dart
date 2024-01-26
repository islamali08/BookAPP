import 'package:book_app/core/utility/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customBottom extends StatelessWidget {
Color backgroundcolor ;
Color textcolor ;
String text ;
BorderRadius? borderredus ;
FontWeight fontwight ;
 void Function()? function ;

customBottom(
      {
required this.backgroundcolor,
      required this.textcolor,
     required this.text,
      this.borderredus,
     required this.fontwight,
         this.function
      }
     );


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundcolor,
            shape: ContinuousRectangleBorder(
              borderRadius:borderredus?? BorderRadius.circular(16),
            )),
        child: Text(
          text,
          style: kstyles.textstyle18.copyWith(
            color: textcolor,
            fontWeight: fontwight,
          ),
        ),
        onPressed: function,
      ),
    );
  }
}
