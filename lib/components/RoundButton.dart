import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {

  RoundedButton({this.btnText,this.btncolor,this.onpress});

  final Color btncolor;
  final String btnText;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: btncolor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onpress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
           btnText,
           style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}