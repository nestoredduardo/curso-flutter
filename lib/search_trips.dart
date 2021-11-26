import 'package:flutter/material.dart';

import 'designers_header.dart';
import 'designers_list.dart';

class SearchTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: DesignersHeader(),
      body: DesignersList()
    );
  }
}