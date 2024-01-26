import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/model/Bookmodel.dart';
import '../../../data/repos/home_repos.dart';

part 'newst_book_state.dart';

class NewstBookCubit extends Cubit<NewstBookState> {
  NewstBookCubit(this.homerepo) : super(NewstBookInitial());

  final HomeRepo homerepo;

  Future<void> featchnewstBooks() async {
    emit(NewstBookLoding());
    var result = await homerepo.fetchBestSellerBooks();

    result.fold((failer) {
      emit(NewstBookEror(failer.errMessage));
    }, (book) {
      emit(NewstBookSucsess(book));
    });
  }
}
