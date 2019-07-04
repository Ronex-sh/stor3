
import 'package:flutter/material.dart';


class ThirdRoute extends StatefulWidget {
  @override
  _ThirdRouteState createState() => _ThirdRouteState();
}

class _ThirdRouteState extends State<ThirdRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Route"),
      ),
      body: Center(
        child: RaisedButton(

          onPressed: () {

            // Navigate back to first route when tapped.
            Navigator.pop(context);
          },

        ),
      ),
    );
  }}