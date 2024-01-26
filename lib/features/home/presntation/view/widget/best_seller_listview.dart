import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_Eror_widget.dart';
import '../../manger/nest_book_cubit/newst_book_cubit.dart';
import 'best_listview_item.dart';

class BestSelerListView extends StatelessWidget {
  const BestSelerListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBookCubit, NewstBookState>(
      builder: (context, state) {
        if(state is NewstBookSucsess){
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),

            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: bestlistviewitem(state.books[index]),
              );
            },) ;
        }else if(state is NewstBookEror){
          return ErorWidget(state.erormasseg) ;

        }else {
          return Center(child: CircularProgressIndicator()) ;
        }
      },
    );
  }
}
