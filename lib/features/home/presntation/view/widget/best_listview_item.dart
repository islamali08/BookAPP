import 'package:book_app/core/utility/styles.dart';
import 'package:book_app/features/home/data/model/Bookmodel.dart';
import 'package:book_app/features/home/presntation/view/widget/pook_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utility/assets_path.dart';
import 'custom_listviewitem.dart';

class bestlistviewitem extends StatelessWidget {
  final Bookmodel bookmodel;

  bestlistviewitem(this.bookmodel);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push('/DetailsView',extra: bookmodel);
          },
          child: SizedBox(
            height: 125,
            child:  custom_listview_item(
                    bookmodel.volumeInfo!.imageLinks?.thumbnail ??'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpFMTieAZG6j6TrZaLR7VFldleuVUo_EKEVQ&usqp=CAU')
               ,
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  bookmodel.volumeInfo!.title!,
                  style: kstyles.textstyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: 3,
              ),
                  Text(
                    bookmodel.volumeInfo!.authors.isEmpty?'not found':bookmodel.volumeInfo!.authors[0] ,
                style: kstyles.textstyle14.copyWith(
                    fontWeight: FontWeight.w500, fontFamily: 'kGTSectraFine'),
              ) ,
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    'Free',
                    style: kstyles.textstyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  BookRating(
                    rete: bookmodel.volumeInfo!.averageRating??0,
                    count: bookmodel.volumeInfo!.ratingsCount??0 ,
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
