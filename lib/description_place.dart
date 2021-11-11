import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    //TODO: implement build

    final star_half = Container(
      margin: EdgeInsets.only(
          top: 323,
          right: 3
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
          top: 323,
          right: 3
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323,
        right: 3
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final starsGroup = Row(
      children: <Widget>[
        star,
        star,
        star,
        star,
        star_half,
        star_border,
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 15,
        right: 40
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontSize: 10,
          color: Colors.grey
        ),
        textAlign: TextAlign.left,
      ),
    );

    final title = Container (
      margin: EdgeInsets.only(
          top: 320,
          left: 20,
          right: 20
      ),
      child: Text(
        namePlace,
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900
        ),
        textAlign: TextAlign.left,
      ),
    );

    final title_starts = Column(
      children: <Widget>[
        Row(children: [title, starsGroup]),
        description
      ],
    );

    return title_starts;
  }
}