import 'package:book_app/features/search/presntation/manager/search_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constant.dart';
import 'core/utility/app_router.dart';
import 'core/utility/serves_locator.dart';
import 'features/home/data/repos/home_repo_implntation.dart';
import 'features/home/presntation/manger/featchercubit/featcher_books_cubit.dart';
import 'features/home/presntation/manger/nest_book_cubit/newst_book_cubit.dart';
import 'features/search/data/repos/repos_implemnation.dart';
import 'features/splash/presntation/view/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(bookapp());
}

class bookapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeatcherBooksCubit(getIt. get<HomeRepoImplment>())..featchFeatcherBooks(),),
        BlocProvider(create: (context) => NewstBookCubit(getIt.get<HomeRepoImplment>())..featchnewstBooks(),),
        BlocProvider(create: (context) => SearchCubit(getIt.get<repoImplement>())..fetchSearchBook(search: 'math'),)

      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: scafoldbgc,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
