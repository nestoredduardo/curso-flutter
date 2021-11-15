import 'package:flutter/material.dart';

import 'review.dart';

class ReviewList extends StatelessWidget {

  String imagePath = 'assets/img/people.jpg';
  String name = 'Varuna Yasas';
  String details = '1 review 5 photos';
  String comment = 'There is an amazing place in Sri Lanka';

  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(imagePath, name, details, comment),
        Review(imagePath, name, details, comment),
        Review(imagePath, name, details, comment)]
    );
  }
}