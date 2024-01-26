import 'package:book_app/core/utility/styles.dart';
import 'package:book_app/features/home/data/model/Bookmodel.dart';
import 'package:book_app/features/home/presntation/view/widget/pook_rating.dart';
import 'package:book_app/features/home/presntation/view/widget/similer_book_listview.dart';
import 'package:book_app/features/home/presntation/view/widget/similer_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_bottom.dart';
import 'custom_action.dart';
import 'custom_listviewitem.dart';
import 'details_screen_appBar.dart';
import 'details_section.dart';

class DetailsScreenViewBody extends StatelessWidget {
   DetailsScreenViewBody({required this.book});
Bookmodel book ;
  @override
  Widget build(BuildContext context) {
       return CustomScrollView(
         slivers: [
           SliverFillRemaining(
             hasScrollBody: false,
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 30),
               child: Column(
                 children: [
                   detailsScreenAppBar(),
                   SizedBox(
                     height: 33,
                   ),


                   detailsSection(book),

                   Expanded(
                       child: SizedBox(height: 50,)),
                   simmelersection(),

                   SizedBox(height: 40,),

                 ],
               ),
             ),
           )
         ],
       );
  }
}



