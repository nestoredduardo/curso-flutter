import 'package:flutter/material.dart';

class CardImage extends StatelessWidget{
  String pathImage = 'assets/img/beach.jpeg';

  CardImage(this.pathImage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final card = Container(
      height: 350,
      width: 250,
      margin: const EdgeInsets.only(
        top: 80,
        left: 20
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 15.0,
            offset: Offset(0,7)
          )
        ]
      ),
    );
    return card;
  }
}