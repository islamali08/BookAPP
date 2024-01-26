import 'package:book_app/features/search/presntation/view/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utility/assets_path.dart';

class myappBar extends StatelessWidget {
  const myappBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetsPath.logo,
          height: 19,
        ),
        Spacer(),
        IconButton(onPressed: (){
          GoRouter.of(context).push('/searchView');

        }, icon: Icon(FontAwesomeIcons.magnifyingGlass),)
      ],
    );
  }
}
