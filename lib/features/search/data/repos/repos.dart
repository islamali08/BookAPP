import 'package:book_app/core/Erors/failers.dart';
import 'package:dartz/dartz.dart';

import '../../../home/data/model/Bookmodel.dart';

abstract class repos {

Future <Either<failer,List<Bookmodel>>> fetchSearchBook({required String search}) ;



}