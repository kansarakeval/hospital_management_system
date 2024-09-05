import 'package:flutter/material.dart';

class RS
{
   static double h=0,w=0;

   static void initSize(BuildContext context)
   {
     h = MediaQuery.sizeOf(context).height;
     w = MediaQuery.sizeOf(context).width;
   }

}