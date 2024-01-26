import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class detailsScreenAppBar extends StatelessWidget {
  const detailsScreenAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){
          GoRouter.of(context).pop();
        }, icon: Icon(Icons.close_outlined)),
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined)),

      ],
    );
  }
}
