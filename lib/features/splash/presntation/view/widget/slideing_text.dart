import 'package:flutter/cupertino.dart';

class slidetext extends StatelessWidget {
  const slidetext({
    Key? key,
    required this.slideanimation,
  }) : super(key: key);

  final Animation<Offset> slideanimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slideanimation,

        builder: (context,_) {
          return SlideTransition(
            position: slideanimation,
            child: Text('Reed Free Books',
              textAlign:TextAlign.center ,
            ),
          );
        }
    );
  }
}
