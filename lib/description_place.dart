import 'package:flutter/material.dart';
import 'package:tripy/button_purple.dart';

class DescriptionPlace extends StatelessWidget{
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    //TODO: implement build

    final starHalf = Container(
      margin: const EdgeInsets.only(
          top: 323,
          right: 3
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final starBorder = Container(
      margin: const EdgeInsets.only(
          top: 323,
          right: 3
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323,
        right: 3
      ),
      child: const Icon(
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
        starHalf,
        starBorder,
      ],
    );

    final description = Container(
      margin: const EdgeInsets.only(
        left: 20,
        top: 15,
        right: 40
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 10,
          color: Colors.grey
        ),
        textAlign: TextAlign.left,
      ),
    );

    final title = Container (
      margin: const EdgeInsets.only(
          top: 320,
          left: 20,
          right: 20
      ),
      child: Text(
        namePlace,
        style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900
        ),
        textAlign: TextAlign.left,
      ),
    );

    final titleStarts = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(children: [title, starsGroup]),
        description,
        ButtonPurple('Navigate')
      ],
    );

    return titleStarts;
  }
}