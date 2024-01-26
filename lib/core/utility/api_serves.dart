import 'package:dio/dio.dart';
class ApiServies {
  final _baseurl ='https://www.googleapis.com/books/v1/' ;
  final Dio _dio ;

  ApiServies( this._dio);

  Future< Map <String,dynamic>> get ({required String endpoid})async {


   var respons=await _dio.get('$_baseurl$endpoid') ;

  return respons.data ;


  }


}