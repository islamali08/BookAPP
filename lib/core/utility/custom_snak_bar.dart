import 'package:flutter/material.dart';

void CustomSnakPar (context,String masseg) {

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(masseg)));

}
