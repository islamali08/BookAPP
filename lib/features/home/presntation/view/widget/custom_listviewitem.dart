import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utility/assets_path.dart';

class custom_listview_item extends StatelessWidget {
  String imageurl;

  custom_listview_item(this.imageurl);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child:CachedNetworkImage(

            fit: BoxFit.fill,
            imageUrl: imageurl,
            errorWidget: (context, url, error) => Icon(Icons.error_outline_rounded),
          ),
        ),
      ),
    );
  }
}
