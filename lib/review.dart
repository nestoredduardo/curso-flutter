import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String imagePath = 'assets/img/people.jpg';
  String name = 'Varuna Yasas';
  String details = '1 review 5 photos';
  String comment = 'There is an amazing place in Sri Lanka';

  Review(this.imagePath, this.name, this.details, this.comment, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    //TODO: implement build

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo = Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 13,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 17
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    final photo= Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20
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

    return Row(children: [photo,userDetails],);
  }
}