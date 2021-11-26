import 'package:flutter/material.dart';

import 'home_tripy.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class Tripy extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _Tripy();
  }
}

class _Tripy extends State<Tripy>{

  int indexTap = 0;
  final List<Widget> widgetsChildren=[
    HomeTripy(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ''
            )
          ]
        ),
      ),
    );
  }
}