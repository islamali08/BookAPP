import 'package:book_app/core/utility/styles.dart';
import 'package:book_app/features/home/presntation/view/widget/similer_book_listview.dart';
import 'package:flutter/cupertino.dart';

class simmelersection extends StatelessWidget {
  const simmelersection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text('You can also like',
            style: kstyles.textstyle14.copyWith(
                fontWeight: FontWeight.w600
            ),
          ),
        ),
        SizedBox(height: 16,),
        simlierBookListView(),

      ],
    );
  }
}
