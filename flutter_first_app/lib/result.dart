import 'dart:ffi';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  VoidCallback ResetHandler;
  Result(this.ResetHandler);
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            "YO DID IT",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: ResetHandler,
              child: Text("Restart Quiz!",
                  textAlign: TextAlign.center,
                  
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)))
        ],
      ),
    );
  }
}
