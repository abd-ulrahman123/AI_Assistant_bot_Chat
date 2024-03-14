
import 'package:flutter/material.dart';

class CrdOfstats extends StatelessWidget {
  final Color _color;
  final double _hight;
  final Widget? _inCardwidget;
  CrdOfstats(this._color,this._hight,this._inCardwidget);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        height: _hight,
        width: size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: _color),
          child: _inCardwidget ?? _colWidgt() ),
    );
  }
}
Widget _colWidgt(){
  return const Column(
            children: [Row(), Text("data")],
          );
}