import 'package:book_app/features/search/presntation/manager/search_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class customTextFild extends StatefulWidget {
  const customTextFild({Key? key}) : super(key: key);

  @override
  State<customTextFild> createState() => _customTextFildState();
}

class _customTextFildState extends State<customTextFild> {
  String? serch ;
  @override
  Widget build(BuildContext context) {
    return               TextField(
      onChanged: (String input){
        setState(() {
          serch = input ;
        });

      },

      decoration: InputDecoration(

          hintText: 'search',

          suffixIcon: IconButton(
            onPressed: (){
              BlocProvider.of<SearchCubit>(context).fetchSearchBook( search: serch??'computer');

            },
            icon: Opacity(
                opacity: .8,
                child: Icon(FontAwesomeIcons.magnifyingGlass)),
          ),
enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder()
      ),
    )
    ;
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(



        borderSide: BorderSide(


            color: Colors.white,

          width: 2,

        ),


        borderRadius: BorderRadius.circular(12),


    );
  }
}
