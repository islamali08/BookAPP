import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widget/custom_Eror_widget.dart';
import '../../../../home/presntation/view/widget/best_listview_item.dart';
import '../../../../home/presntation/view/widget/custom_listviewitem.dart';
import '../../manager/search_cubit.dart';

class custmSearchlistview extends StatelessWidget {
  const custmSearchlistview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {


        if (state is SearchSucces) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child:
                    bestlistviewitem(state.books[index])

                );
              },
            ),
          );
        } else if (state is SearchEror) {
          return ErorWidget(state.erorMesseg);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
