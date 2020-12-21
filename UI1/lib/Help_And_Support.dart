import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
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
            height: size.height * 0.7,
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.bottomCenter,
                    image: AssetImage(
                      'assets/images/HelpDesk.png',
                    ))),
          ),
          Expanded(
              child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            primary: false,
            children: <Widget>[
              Card(
                margin: EdgeInsets.only(top: 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.transparent,
                elevation: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/email.svg',
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        'abc@gmail.com',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Montserrat Regular',
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(top: 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.transparent,
                elevation: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/phone1.svg',
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        '1234567890',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Montserrat Regular',
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
