import 'package:book_app/features/home/data/model/Bookmodel.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/Erors/failers.dart';

abstract class HomeRepo {

 Future<Either<failer,List<Bookmodel>>> fetchFeaturedBooks();
 Future<Either<failer,List<Bookmodel>>> fetchBestSellerBooks();
 Future<Either<failer,List<Bookmodel>>> fetchSemlerBooks({required String category});


}