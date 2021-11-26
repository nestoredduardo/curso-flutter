import 'package:flutter/material.dart';

import 'header_appbar.dart';
import 'review_list.dart';
import 'description_place.dart';

class HomeTripy extends StatelessWidget{
  String descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at dui convallis, pharetra nunc at, vulputate massa. Donec condimentum ac erat eu accumsan. Curabitur ultrices pretium erat, vel mattis erat commodo ut. Maecenas dapibus odio diam, eu pulvinar eros iaculis nec. Phasellus non posuere mi, nec lobortis ipsum. Sed non odio vel justo varius condimentum. In varius condimentum turpis, nec hendrerit metus suscipit ac. In hac habitasse platea dictumst. In enim orci, molestie vel leo ac, efficitur rhoncus risus. Aliquam feugiat felis eget ex suscipit, et rhoncus neque molestie. Nunc rutrum malesuada elementum.";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: [
            DescriptionPlace("Bahamas", 4, descriptionText),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}