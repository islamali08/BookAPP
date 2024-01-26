import 'package:book_app/core/utility/serves_locator.dart';
import 'package:book_app/features/home/data/model/Bookmodel.dart';
import 'package:book_app/features/home/presntation/view/home_view.dart';
import 'package:book_app/features/splash/presntation/view/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/data/repos/home_repo_implntation.dart';
import '../../features/home/presntation/manger/simeler_book/simler_book_cubit.dart';
import '../../features/home/presntation/view/details_screen_view.dart';
import '../../features/search/presntation/view/search_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => splashView(),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => searchView(),
      ),
      GoRoute(
        path: '/HomeView',
        builder: (context, state) => home(),
      ),
      GoRoute(
        path: '/DetailsView',
        builder: (context, state) => BlocProvider(
          create: (context) => SimlerBookCubit(getIt.get<HomeRepoImplment>()),
          child: DetailsScreenView(state.extra as Bookmodel),
        ),
      ),
    ],
  );
}
