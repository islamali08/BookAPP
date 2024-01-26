import 'package:book_app/core/utility/styles.dart';
import 'package:flutter/cupertino.dart';

class ErorWidget extends StatelessWidget {
String erormasseg ;


ErorWidget(this.erormasseg);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(erormasseg,style: kstyles.textstyle18,));
  }
}
