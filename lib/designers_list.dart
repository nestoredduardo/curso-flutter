import 'package:flutter/material.dart';

import 'designer_item.dart';

class DesignersList extends StatelessWidget{
  String imagePath = 'assets/img/people.jpg';
  String name = 'Varuna Yasas';
  String experience = '04';

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        DesignerItem(imagePath, name, experience),
        DesignerItem(imagePath, name, experience),
        DesignerItem(imagePath, name, experience),
        DesignerItem(imagePath, name, experience),
        DesignerItem(imagePath, name, experience),
      ],
    );
  }
}