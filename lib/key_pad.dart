library xco_keypad;

import 'package:flutter/material.dart';

class XcoKeypad extends StatelessWidget {
  final Function(String inputValue) onTapePadButton;

  const XcoKeypad({Key key, this.onTapePadButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _keypadContainer;
  }

  //This returns a Column for the keypad
  Column get _keypadContainer {
    return Column(
      children: <Widget>[
        buttonsRow1Container(),
        buttonsRow2Container(),
        buttonsRow3Container(),
        buttonsRow4Container(),
      ],
    );
  }

  //This is the first Row of keys
  Row buttonsRow1Container() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new FlatButton(
            child: Text("7",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.normal)),
            onPressed: () => onTapePadButton("7"),
            padding: EdgeInsets.all(20.0),
          ),
          new FlatButton(
              child: Text("8",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.normal)),
              onPressed: () => onTapePadButton("8"),
              padding: EdgeInsets.all(20.0)),
          new FlatButton(
              child: Text("9",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.normal)),
              onPressed: () => onTapePadButton("9"),
              padding: EdgeInsets.all(20.0)),
        ],
      );

  //This is the second Row of keys
  Row buttonsRow2Container() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new FlatButton(
              child: Text("4",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.normal)),
              onPressed: () => onTapePadButton("4"),
              padding: EdgeInsets.all(20.0)),
          new FlatButton(
              child: Text("5",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.normal)),
              onPressed: () => onTapePadButton("5"),
              padding: EdgeInsets.all(20.0)),
          new FlatButton(
              child: Text("6",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.normal)),
              onPressed: () => onTapePadButton("6"),
              padding: EdgeInsets.all(20.0)),
        ],
      );
  //This is the third Row of keys
  Row buttonsRow3Container() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new FlatButton(
            child: Text("1",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.normal)),
            onPressed: () => onTapePadButton("1"),
            padding: EdgeInsets.all(20.0)),
        new FlatButton(
            child: Text("2",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.normal)),
            onPressed: () => onTapePadButton("2"),
            padding: EdgeInsets.all(20.0)),
        new FlatButton(
            child: Text("3",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.normal)),
            onPressed: () => onTapePadButton("3"),
            padding: EdgeInsets.all(20.0)),
      ],
    );
  }

  //This is the second Row of keys
  Row buttonsRow4Container() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new FlatButton(
            child: Icon(Icons.backspace),
            onPressed: () => onTapePadButton("."),
            padding: EdgeInsets.all(20.0)),
        new FlatButton(
            child: Text("0",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.normal)),
            onPressed: () => onTapePadButton("0"),
            padding: EdgeInsets.all(20.0)),
        new FlatButton(
            child: Text("OK",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                    fontWeight: FontWeight.normal)),
            onPressed: () => onTapePadButton("OK"),
            padding: EdgeInsets.all(20.0)),
      ],
    );
  }
}
