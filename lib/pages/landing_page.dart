import 'package:flutter/material.dart';
import 'package:globe/colors/colors.dart';
import 'package:globe/image_asset.dart';
import 'package:globe/pages/navBar.dart';
import 'package:globe/profile_image.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final logoHeight = screenHeight * .4;
    final logoWidth = screenWidth * .4;
    final drawerItems = ListView(
      children: <Widget>[ListTile(
        title: Text('Profile'),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => NavBar()))
        //Navigator.of(context).push(newPage),
      )],
    );
    return new Scaffold(
      //appBar: AppBar(title: Image.asset(logo, height: logoHeight, width: logoWidth,), backgroundColor: first,),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(logoWidth * .4, -15),
            child: Transform.rotate(
              angle: -.1,
              child: Container(
                child: new Text(''),
                constraints: BoxConstraints(minHeight: 400, minWidth: 500),
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(globe),
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.dstATop)),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: logoHeight * .1, right: logoHeight * .1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.menu,
                        color: second,
                        size: 35,
                      ),
                      Icon(Icons.search, color: second, size: 35),
                    ],
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 5),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            maxRadius: 50,
                            backgroundColor: Colors.brown.shade800,
                            child: Text('AH', style: TextStyle(fontSize: 50),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(fontSize: 20),
                                text: '[Your name here]'
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}
