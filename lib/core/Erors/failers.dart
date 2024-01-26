import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class failer {
  final String errMessage;

  failer(this.errMessage);
}

class serverfailer extends failer {
  serverfailer(super.errMessage);

  factory serverfailer.dioError(DioError dioeror) {
    switch (dioeror.type) {
      case DioExceptionType.connectionTimeout:
        return serverfailer('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return serverfailer('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return serverfailer('Receive timeout with ApiServer');
      case DioExceptionType.badResponse:
       return serverfailer.fromrespons(dioeror.response!.statusCode!, dioeror.response!.data);
      case DioExceptionType.cancel:
       return serverfailer('Request to ApiServer was canceld');
      case DioExceptionType.connectionError:
        if(dioeror.message!.contains('SocketException')){
          
          return serverfailer('No Internet Connection');
        }
        return serverfailer('Unexpected Error, Please try again!');
      default:
        return serverfailer('Opps There was an Error, Please try again');
    }
  }

  factory serverfailer.fromrespons(int statecode,dynamic response){
    if(statecode == 200 || statecode == 201 || statecode == 403 ){

      return serverfailer(response['requste']['message']);
    }else if(statecode == 404){

      return serverfailer('Your request not found, Please try later!');
    }else if(statecode ==500){

      return serverfailer('Internal Server error, Please try later');
    }else
      return serverfailer('Opps There was an Error, Please try again');


  }
}
