import 'package:book_app/core/utility/styles.dart';
import 'package:book_app/features/home/presntation/view/widget/pook_rating.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/model/Bookmodel.dart';
import 'custom_action.dart';
import 'custom_listviewitem.dart';

class detailsSection extends StatelessWidget {
  Bookmodel book ;

  detailsSection(this.book);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: custom_listview_item(book.volumeInfo!.imageLinks?.thumbnail ?? ''),
        ),
        SizedBox(
          height: 43,
        ),
        Text(
          book.volumeInfo!.title!,
          style: kstyles.textstyle30,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            book.volumeInfo!.authors.isEmpty?'not found':book.volumeInfo!.authors[0],
            style: kstyles.textstyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: book.volumeInfo!.averageRating ?? 0,
          rete: book.volumeInfo!.ratingsCount ?? 0,
        ),
        SizedBox(
          height: 37,
        ),
        CustomAction( bookmodell: book,),
      ],
    );
  }
}
