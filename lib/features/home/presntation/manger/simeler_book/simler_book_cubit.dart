import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/model/Bookmodel.dart';
import '../../../data/repos/home_repos.dart';

part 'simler_book_state.dart';

class SimlerBookCubit extends Cubit<SimlerBookState> {
  SimlerBookCubit(this.homerepo) : super(SimlerBookInitial());
  final HomeRepo homerepo ;


  Future<void> featchsimelerBooks ({required String catedory}) async{
    emit(SimlerBookloding());
    var result = await  homerepo.fetchSemlerBooks(category: catedory);

    result.fold(
            (failer) {
      emit(SimlerBookeror(failer.errMessage));

    }, (books) {

      emit(SimlerBooksucses(books));
    });



  }

}
