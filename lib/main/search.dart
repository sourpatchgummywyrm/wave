import 'package:flutter/material.dart';
import 'package:globe/global.dart';
import 'createparty.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SearchState();
  }
}

class SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.75;
    double height1 = height * 0.8;
    return new Scaffold(
      backgroundColor: paleRedColor,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 20.0,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CreateParty()));
        },
        label: Text(
          'Create',
          style: reggie,
        ),
        icon: Icon(
          Icons.create,
          color: paleRedColor,
        ),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
