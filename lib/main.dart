import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("App Permission"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: MultiSwitch(),
    ));
  }
}

class MultiSwitch extends StatefulWidget {
  @override
  _MultiSwitchState createState() => _MultiSwitchState();
}

class _MultiSwitchState extends State<MultiSwitch> {
  bool val1 = true;
  bool val2 = true;
  bool val3 = true;
  bool val4 = true;
  bool val5 = true;
  bool val6 = true;
  bool val7 = true;

  onChangeFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      val2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      val3 = newValue3;
    });
  }

  onChangeFunction4(bool newValue4) {
    setState(() {
      val4 = newValue4;
    });
  }

  onChangeFunction5(bool newValue5) {
    setState(() {
      val5 = newValue5;
    });
  }

  onChangeFunction6(bool newValue6) {
    setState(() {
      val6 = newValue6;
    });
  }

  onChangeFunction7(bool newValue7) {
    setState(() {
      val7 = newValue7;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // IconButton(onPressed: () {}, icon: Icon(Icons.person_outline)),
            customSwitch('Camera', val1, onChangeFunction1),
            customSwitch('Contacts', val2, onChangeFunction2),
            customSwitch('Location', val3, onChangeFunction3),
            customSwitch('Microphone', val4, onChangeFunction4),
            customSwitch('SMS', val5, onChangeFunction5),
            customSwitch('Storage', val6, onChangeFunction6),
            customSwitch('Telephone', val7, onChangeFunction7)
          ],
        ),
      ),
    );
  }

  Widget customSwitch(String text, bool val, Function onChangeMethod) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 15.0, right: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // IconButton(icon: Icon(Icons.camera_alt_outlined), onPressed: () {}),
          Text(text,
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
          Spacer(),
          Transform.scale(
            scale: 1,
            child: Switch(
              inactiveTrackColor: Colors.grey,
              activeColor: Colors.blue,
              value: val,
              onChanged: (newValue) {
                onChangeMethod(newValue);
              },
            ),
          )
        ],
      ),
    );
  }
}
