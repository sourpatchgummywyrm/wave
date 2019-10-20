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
      body: new Column(children: <Widget>[
                    Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (value) {
                  //filterSearchResults(value);
                },
                //controller: editingController,
                decoration: InputDecoration(
                    labelText: "Search",
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)))),
              ),
            ),
            new Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
            new Container(
          child: new SizedBox(
              height: 50.0,
              width: 100.0,
              child: new RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreateParty()));
                },
                color: Colors.white,
                elevation: 30.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: new Text(
                  "Create",
                  style: new TextStyle(
                    fontFamily: 'reggie',
                    color: paleRedColor,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            )
      ],)
    );
  }
}
