import 'package:book_app/core/Erors/failers.dart';
import 'package:book_app/core/utility/api_serves.dart';
import 'package:book_app/features/home/data/model/Bookmodel.dart';
import 'package:book_app/features/home/data/repos/home_repos.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplment implements HomeRepo {
  final ApiServies apiservis;

  HomeRepoImplment(this.apiservis);

  @override
  Future<Either<failer, List<Bookmodel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiservis.get(
          endpoid:
          'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science'
      );
      List<Bookmodel> books = [];
      for (var item in data['items'])
        books.add(Bookmodel.fromJson(item));

      return Right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(serverfailer.dioError(e));
      }

      return left(serverfailer(e.toString()));
    }
  }

  @override
  Future<Either<failer, List<Bookmodel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiservis.get(
          endpoid:
          'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
      List<Bookmodel> books = [];
      for (var item in data['items'])
        books.add(Bookmodel.fromJson(item));

      return Right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(serverfailer.dioError(e));
      }

      return left(serverfailer(e.toString()));
    }
  }

  @override
  Future<Either<failer, List<Bookmodel>>> fetchSemlerBooks({required String category}) async{
    try {
      var data = await apiservis.get(
          endpoid:
          'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
      List<Bookmodel> bookse = [];
      for (var item in data['items'])
        bookse.add(Bookmodel.fromJson(item));

      return Right(bookse);
    } on Exception catch (e) {
      if (e is DioError) {
        return left(serverfailer.dioError(e));
      }

      return left(serverfailer(e.toString()));
    }
  }
}
