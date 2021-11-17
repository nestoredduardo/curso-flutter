import 'package:flutter/material.dart';
import 'package:tripy/card_image.dart';

class CardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    //TODO: implement build
    return SizedBox(
      height: 350,
      child: ListView(
        padding: const EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage('assets/img/beach.jpeg'),
          CardImage('assets/img/mountain.jpeg'),
          CardImage('assets/img/mountain_starts.jpeg'),
          CardImage('assets/img/river.jpeg'),
          CardImage('assets/img/sunset.jpeg'),
        ],
      ),
    );
  }
}