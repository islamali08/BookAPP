import 'package:book_app/core/utility/styles.dart';
import 'package:book_app/features/search/presntation/view/widget/search_listview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../home/presntation/view/widget/best_listview_item.dart';
import 'Custom_text_faild.dart';

class searchViewBody extends StatelessWidget {
  const searchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: customTextFild(),
              ),
              SizedBox(height: 16,),
              Text(
                'Search reasult',
                style: kstyles.textstyle18,
              ),
              SizedBox(height: 16,),

        
        Expanded(
          child: custmSearchlistview(),
        )


            ],
          ),
        ),
      ),
    );
  }






}
