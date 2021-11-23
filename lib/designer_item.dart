import 'package:flutter/material.dart';

class DesignerItem extends StatelessWidget{

  String imagePath = 'assets/img/people.jpg';
  String name = 'Varuna Yasas';
  String experience = '04';

  DesignerItem(this.imagePath, this.name, this.experience);

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    final DesignerImage = Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath)
        )
      ),
    );

    throw UnimplementedError();
  }
}