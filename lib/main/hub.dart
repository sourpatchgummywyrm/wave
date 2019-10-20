import 'package:flutter/material.dart';
import 'package:globe/global.dart';
import 'package:globe/main/profile.dart';
import 'package:globe/main/search.dart';
import 'package:globe/main/waves.dart';
import 'package:globe/Auth.dart';

class Hub extends StatefulWidget {
  Hub({
    this.auth,
    this.onSignedOut,
  });
  final AuthImplementation auth;
  final VoidCallback onSignedOut; 
  @override
  State<StatefulWidget> createState() {
    return new HubState();
  }
}

class HubState extends State<Hub> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: new Scaffold(
          backgroundColor: paleRedColor,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: new AppBar(
              leading: new Container(),
              backgroundColor: paleRedColor,
              elevation: 0.0,
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: <Widget>[
                  new Tab(
                    child: new Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: new Text("Search", style: reggie3),
                    ),
                  ),
                  new Tab(
                    child: new Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: new Text("Waves", style: reggie3),
                    ),
                  ),
                  new Tab(
                    child: new Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: new Text(
                        "Profile",
                        style: reggie3,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          body: new TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[Search(), Waves(), Profile()],
          )),
    );
  }
}
