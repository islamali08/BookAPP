import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/model/Bookmodel.dart';
import '../../../data/repos/home_repos.dart';

part 'featcher_books_state.dart';

class FeatcherBooksCubit extends Cubit<FeatcherBooksState> {
  FeatcherBooksCubit(this.homerepo) : super(FeatcherBooksInitial());
 final HomeRepo homerepo ;

 Future<void> featchFeatcherBooks () async{
 emit(FeatcherBooksloding());
 var result = await  homerepo.fetchFeaturedBooks();

 result.fold((failer) {
   emit(FeatcherBooksEror(failer.errMessage));

 }, (books) {

   emit(FeatcherBookssucses(books));
 });

 

 }

}
