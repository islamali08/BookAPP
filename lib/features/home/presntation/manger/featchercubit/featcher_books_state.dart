part of 'featcher_books_cubit.dart';

@immutable
abstract class FeatcherBooksState {}

class FeatcherBooksInitial extends FeatcherBooksState {}
class FeatcherBooksloding extends FeatcherBooksState {}
class FeatcherBooksEror extends FeatcherBooksState {
  String eror ;

  FeatcherBooksEror(this.eror);
}
class FeatcherBookssucses extends FeatcherBooksState {
  final List<Bookmodel> books ;

  FeatcherBookssucses(this.books);
}
