part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}
class SearchLoding extends SearchState {}
class SearchEror extends SearchState {

  String erorMesseg ;

  SearchEror(this.erorMesseg);
}
class SearchSucces extends SearchState {
  List <Bookmodel> books ;

  SearchSucces(this.books);
}
