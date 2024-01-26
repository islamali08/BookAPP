import 'package:book_app/features/search/presntation/view/widget/search_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class searchView extends StatelessWidget {
  const searchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: searchViewBody(),
    );
  }
}
