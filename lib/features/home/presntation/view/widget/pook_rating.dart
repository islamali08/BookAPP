import 'package:book_app/core/utility/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {

  final MainAxisAlignment mainAxisAlignment ;
  int rete ;
  int count ;

  BookRating({this.mainAxisAlignment = MainAxisAlignment.start,required this.rete,required this.count});


  @override
  Widget build(BuildContext context) {

    return Row(

    mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '$rete',
          style: kstyles.textstyle16,
        ),
        SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            '($count)',
            style: kstyles.textstyle14.copyWith(

              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ],
    );
  }
}
