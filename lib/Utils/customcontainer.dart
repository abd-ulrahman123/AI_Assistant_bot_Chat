import 'package:ai_chatbot_ui/Utils/cards.dart';
import 'package:ai_chatbot_ui/constants.dart/constants.dart';
import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  final Widget _customCAvatar;
  final String _statTitle, _statNumbers;
  final double _customHigh;
  final Color? _customColor,_theTextcolor;
  StatsCard(this._customCAvatar, this._statNumbers, this._statTitle,
      this._customHigh,this._customColor,this._theTextcolor);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Expanded(
        child: CrdOfstats(
            _customColor ?? const Color.fromARGB(31, 252, 114, 114),
            _customHigh,
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 18,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        child: Text(
                      _statTitle,
                      style: TextStyle(color: _theTextcolor ?? wite),
                    )),
                    Text(
                      _statNumbers,
                      style: TextStyle(color:_theTextcolor ?? wite),
                    )
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 2.2),
                _customCAvatar
              ],
            )),
      ),
    );
  }
}
