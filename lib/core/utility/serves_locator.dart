import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/home_repo_implntation.dart';
import '../../features/search/data/repos/repos_implemnation.dart';
import 'api_serves.dart';

final getIt = GetIt.instance;

void setup(){
  getIt.registerSingleton<ApiServies>(ApiServies(Dio()));

  getIt.registerSingleton<HomeRepoImplment>(HomeRepoImplment(getIt.get<ApiServies>()));
  getIt.registerSingleton<repoImplement>(repoImplement(getIt.get<ApiServies>()));


}
