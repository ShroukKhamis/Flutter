import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton(

{
   double width=double.infinity ,
   Color background=Colors.blue ,
  required Function function,
  required String text,
}

    ) =>Container(
  width: width,

  height: 50,
  child: MaterialButton(
    onPressed: function(),
    child: Text(
      text.toUpperCase(),
      style: TextStyle(
          color: Colors.white
      ),
    ),
  ),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: background,
  ),
);
