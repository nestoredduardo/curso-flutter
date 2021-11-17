import 'package:flutter/material.dart';
import 'package:tripy/card_image_list.dart';
import 'package:tripy/gradient_back.dart';

class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        GradientBack('Welcome'),
        CardImageList()
      ],
    );
  }
}