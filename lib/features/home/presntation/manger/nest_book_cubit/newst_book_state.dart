part of 'newst_book_cubit.dart';

@immutable
abstract class NewstBookState {}

class NewstBookInitial extends NewstBookState {}
class NewstBookLoding extends NewstBookState {}
class NewstBookEror extends NewstBookState {
  String erormasseg ;

  NewstBookEror(this.erormasseg);
}
class NewstBookSucsess extends NewstBookState {
  final List<Bookmodel> books ;

  NewstBookSucsess(this.books);
}
