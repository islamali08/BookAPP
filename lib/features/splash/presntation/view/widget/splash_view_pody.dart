import 'package:book_app/features/splash/presntation/view/widget/slideing_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/utility/assets_path.dart';
import '../../../../home/presntation/view/home_view.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationcontrol;

  late Animation<Offset> slideanimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initslideinmation();

    navigatetohome();
  }

  @override
  void dispose() {
    super.dispose();
    animationcontrol.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            AssetsPath.logo,
          ),
          slidetext(slideanimation: slideanimation)
        ],
      ),
    );
  }

  void initslideinmation() {
    animationcontrol =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slideanimation = Tween<Offset>(begin: Offset(0, 2), end: Offset.zero)
        .animate(animationcontrol);
    animationcontrol.forward();
    slideanimation.addListener(() {
      setState(() {});
    });
  }

  void navigatetohome() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        // Get.to(
        //   () => home(),
        //   transition: Transition.fade,
        //   duration: ktransationduration,
        // );

        GoRouter.of(context).push('/HomeView')          ;

      },
    );
  }
}
