import 'package:book_app/features/home/presntation/manger/simeler_book/simler_book_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'custom_listviewitem.dart';

class simlierBookListView extends StatelessWidget {
  const simlierBookListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimlerBookCubit, SimlerBookState>(
  builder: (context, state) {
    if(state is SimlerBooksucses)
      {

        return SizedBox(
          height: MediaQuery.of(context).size.height * .15,

          child: ListView.builder(
                itemCount: state.books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding:  EdgeInsets.symmetric(horizontal:5 ),
                child: custom_listview_item(state.books[index].volumeInfo!.imageLinks?.thumbnail ??''),
              );
            },
          ),
        );
      }else if (state is SimlerBookeror){
      return ErrorWidget(state.erorMesseg);

    }else {
      return Center(child: CircularProgressIndicator());
    }
  },
);
  }
}
