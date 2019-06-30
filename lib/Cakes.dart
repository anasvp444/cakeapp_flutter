import 'package:flutter/material.dart';


class Cakes extends StatelessWidget{
  final List<String> cakes;
  Cakes(this.cakes);
  @override
    Widget build(BuildContext context) {
      
      return Column(children:
        cakes.map((cake)=> Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text(cake)
                  ],
                ),
              ))
          .toList(),

        );
    }
}