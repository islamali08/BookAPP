import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'custom_snak_bar.dart';

Future lunchCustomUrl (context , String? uri) async{
 if(uri!=null) {
    Uri url = Uri.parse(uri);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      CustomSnakPar(context, '"not found $uri"');
    }
  }
}


