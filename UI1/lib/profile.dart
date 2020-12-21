import 'package:flutter/material.dart';

class PersonalDetail extends StatefulWidget {
  @override
  _PersonalDetailState createState() => _PersonalDetailState();
}

class _PersonalDetailState extends State<PersonalDetail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.31,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/images/top_header.png'))),
          ),
          Container(
            height: size.height * 1,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.bottomCenter,
                    image: AssetImage(
                      'assets/images/Personal_image.png',
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  height: size.height * 0.2,
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage('assets/images/user2.png'),
                  ),
                ),
                Text(
                  'Kunal Pandey',
                  style: TextStyle(
                      fontFamily: 'Montserrat Medium',
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                ListTile(
                  leading: Icon(Icons.tag_faces),
                  title: Text(
                    'Age     =  20',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat Medium'),
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                ListTile(
                  leading: Icon(Icons.tag_faces),
                  title: Text(
                    'Place  =  Ranchi',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat Medium'),
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                ListTile(
                  leading: Icon(Icons.tag_faces),
                  title: Text(
                    'Health =  Ranchi',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat Medium'),
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
