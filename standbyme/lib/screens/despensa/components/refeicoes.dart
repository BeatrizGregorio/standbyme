import 'package:flutter/material.dart';
import 'package:standbyme_tcc/constants.dart';
//import 'package:standbyme_tcc/size_config.dart';
//import 'package:standbyme_tcc/screens/despensa/components/search_field.dart';

class Refeicoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          SizedBox(height: 20),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: Text("Definir refeições",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      fontWeight: FontWeight.bold, color: kPrimaryColor))),
          SizedBox(height: 20),

          //_buildListView(),
        ]));
  }
}
