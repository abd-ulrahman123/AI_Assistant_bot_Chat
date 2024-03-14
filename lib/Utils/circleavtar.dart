
import 'package:flutter/material.dart';

class CAvatar extends StatelessWidget {
  Color? colur;
  Widget? avchildWidget;
  Function()? tapp;
  CAvatar({this.colur, this.avchildWidget, this.tapp});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: tapp,
        child: CircleAvatar(
          backgroundColor: colur ?? const Color.fromARGB(221, 37, 34, 34),
          radius: 25.0,
          child: Center(
              child: avchildWidget ??
                  const Icon(
                    Icons.electric_bolt_outlined,size:16 ,
                    color: Color.fromARGB(255, 207, 200, 219),
                  )),
        ),
      ),
    );
  }
}
