part of 'simler_book_cubit.dart';

@immutable
abstract class SimlerBookState {}

class SimlerBookInitial extends SimlerBookState {}
class SimlerBookloding extends SimlerBookState {}
class SimlerBookeror extends SimlerBookState {
  String erorMesseg ;

  SimlerBookeror(this.erorMesseg);
}
class SimlerBooksucses extends SimlerBookState {
 List<Bookmodel> books ;

 SimlerBooksucses(this.books);
}
