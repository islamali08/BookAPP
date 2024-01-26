import 'package:book_app/core/Erors/failers.dart';
import 'package:book_app/features/home/data/model/Bookmodel.dart';
import 'package:book_app/features/search/data/repos/repos.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utility/api_serves.dart';

class repoImplement implements repos {
  final ApiServies apiservis;

  repoImplement(this.apiservis);

  @override
  Future<Either<failer, List<Bookmodel>>> fetchSearchBook(
      {required String search}) async {
    try {
      var data = await apiservis.get(
          endpoid:
              'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:$search');
      List  <Bookmodel> books =[];
      for(var book in data['items'])
        books.add(Bookmodel.fromJson(book));

      return Right(books);

    } on Exception catch (e) {
      if(e is DioError){

        return Left(serverfailer.dioError(e));
      }
      return Left(serverfailer(e.toString()));
    }
  }
}
