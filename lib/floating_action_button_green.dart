import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  bool _tap = false;

  void onPressedFav(){
    setState(() {
      _tap = !_tap;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: _tap? const Text('Añadido a favoritos') : const Text('Retirado de favoritos')
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Give Love",
      child: Icon(
        _tap? Icons.favorite: Icons.favorite_border
      ),
      onPressed: onPressedFav,
    );
  }
}