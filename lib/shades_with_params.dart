import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/foundation/key.dart';

import 'shades_page.dart';
//modelroute.contect passes the data

class ShadeswithParams extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as MaterialAccentColor;

       //context is the whole apps state 

    return shadesPage(
      //colour is needed in shadesPage
      //data is basically in homepage argument and passing at as a data
      //navigateshadestatic 
      color: data,
    );
  }
}
