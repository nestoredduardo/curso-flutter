import 'package:flutter/material.dart';

class DesignerItem extends StatelessWidget{

  String imagePath = 'assets/img/people.jpg';
  String name = 'Varuna Yasas';
  String experience = '04';

  DesignerItem(this.imagePath, this.name, this.experience, {Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    final DesignerImage = Container(
      margin: const EdgeInsets.only(
        right: 20,
        bottom: 20
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imagePath)
        )
      ),
    );

    final DesignerName = Container(
      child: Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),
      ),
    );

    final DesignerExperience = Container(
      child: Text(
        'Experience: '+ experience + ' years',
      ),
    );

    final DesignerInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DesignerName,
        DesignerExperience
      ],
    );

    final MessageIcon = Container(
      child: const Icon(
        Icons.message,
      ),
    );

    return Row(
      children: [
        DesignerImage,
        DesignerInfo,
        MessageIcon
      ],
    );
  }
}