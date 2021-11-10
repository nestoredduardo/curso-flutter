import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //TODO: implement build

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
        star,
        star,
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 15,
        right: 40
      ),
      child: Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at dui convallis, pharetra nunc at, vulputate massa. Donec condimentum ac erat eu accumsan. Curabitur ultrices pretium erat, vel mattis erat commodo ut. Maecenas dapibus odio diam, eu pulvinar eros iaculis nec. Phasellus non posuere mi, nec lobortis ipsum. Sed non odio vel justo varius condimentum. In varius condimentum turpis, nec hendrerit metus suscipit ac. In hac habitasse platea dictumst. In enim orci, molestie vel leo ac, efficitur rhoncus risus. Aliquam feugiat felis eget ex suscipit, et rhoncus neque molestie. Nunc rutrum malesuada elementum.",
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
        "Duwili Ella",
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