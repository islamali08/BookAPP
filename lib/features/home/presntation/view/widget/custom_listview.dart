import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widget/custom_Eror_widget.dart';
import '../../manger/featchercubit/featcher_books_cubit.dart';
import 'custom_listviewitem.dart';

class custmlistview extends StatelessWidget {
  const custmlistview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatcherBooksCubit, FeatcherBooksState>(
      builder: (context, state) {
        if (state is FeatcherBookssucses) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child:
                      GestureDetector(
                        onTap: (){
                            GoRouter.of(context).push('/DetailsView',extra: state.books[index]);
                        },
                        child: custom_listview_item(
                            state.books[index].volumeInfo!.imageLinks?.thumbnail ??'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpFMTieAZG6j6TrZaLR7VFldleuVUo_EKEVQ&usqp=CAU'),
                      )

                );
              },
            ),
          );
        } else if (state is FeatcherBooksEror) {
          return ErorWidget(state.eror);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
