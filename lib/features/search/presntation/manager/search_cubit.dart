import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../home/data/model/Bookmodel.dart';
import '../../../home/data/repos/home_repos.dart';
import '../../data/repos/repos.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homerepo) : super(SearchInitial());

  final repos homerepo ;

  Future<void> fetchSearchBook ({required String search}) async{
    emit(SearchLoding());
    var result =  await  homerepo.fetchSearchBook( search: search);

    result.fold(
            (failer) {
          emit(SearchEror(failer.errMessage));

        }, (books) {

      emit(SearchSucces(books));
    });



  }

}
