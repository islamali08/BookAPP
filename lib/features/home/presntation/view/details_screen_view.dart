import 'package:book_app/features/home/data/model/Bookmodel.dart';
import 'package:book_app/features/home/presntation/manger/simeler_book/simler_book_cubit.dart';
import 'package:book_app/features/home/presntation/view/widget/details_screen_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsScreenView extends StatefulWidget {
  Bookmodel book ;


  DetailsScreenView(this.book);

  @override
  State<DetailsScreenView> createState() => _DetailsScreenViewState();
}

class _DetailsScreenViewState extends State<DetailsScreenView> {

  @override
  void initState() {
    BlocProvider.of<SimlerBookCubit>(context).featchsimelerBooks(catedory: widget.book.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DetailsScreenViewBody(book: widget.book),
      ),
    );
  }
}
