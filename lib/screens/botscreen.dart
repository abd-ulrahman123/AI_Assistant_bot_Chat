
import 'package:ai_chatbot_ui/Utils/cards.dart';
import 'package:ai_chatbot_ui/Utils/circleavtar.dart';
import 'package:ai_chatbot_ui/Utils/customcontainer.dart';
import 'package:ai_chatbot_ui/constants.dart/constants.dart';
import 'package:flutter/material.dart';

class Botscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: wite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: size.width,
            height: size.height / 6,
            padding: const EdgeInsets.only(top: 22),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CAvatar(
                  tapp: () {
                    Navigator.pop(context);
                  },
                  colur: const Color.fromARGB(95, 240, 229, 229),
                  avchildWidget: const Icon(
                    Icons.arrow_back,
                    size: 16,
                  ),
                ),
                const Text(
                  "AI Assistant",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                CAvatar(
                  colur: const Color.fromARGB(95, 240, 229, 229),
                  avchildWidget: const Icon(
                    Icons.archive_outlined,
                    size: 15,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.only(right: 13, left: 13),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(33),
                    topLeft: Radius.circular(30)),
                color: blakk),
            height: size.height / 1.25,
            width: size.width,
            child: Column(
              children: [
                CAvatar(
                  colur: yello,
                  avchildWidget: const Icon(
                    Icons.bolt_outlined,
                    size: 27,
                    color: blakk,
                  ),
                ),
                const Text(
                  "How can I help you?",
                  style: TextStyle(color: wite),
                ),
                const SizedBox(
                  height: 17,
                ), //would removed
                StatsCard(
                    CAvatar(
                      avchildWidget: const Icon(
                        Icons.square_rounded,
                        color: Color.fromARGB(255, 207, 200, 219),
                      ),
                    ),
                    "23,200",
                    "Total Market",
                    100,null,null),
                StatsCard(
                    CAvatar(
                        avchildWidget: const Icon(Icons.wallet_outlined,
                            color: Color.fromARGB(255, 207, 200, 219))),
                    "6,300",
                    "Total Sales",
                    100,null,null),
                StatsCard(
                    CAvatar(
                        avchildWidget: const Icon(Icons.person_pin,
                            color: Color.fromARGB(255, 207, 200, 219))),
                    "       1,200",
                    "       Leads",
                    100,null,null), 
                const SizedBox(
                  height: 11,
                ),
                CrdOfstats(
                    yello,
                    size.height/11,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CAvatar(
                          colur: Colors.yellow,
                          avchildWidget: const Icon(
                            Icons.mic_none,
                            color: Colors.black87,
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            
                          ),
                        ),
                        CAvatar(
                          colur: blakk,
                          avchildWidget: const Icon(
                            Icons.send_sharp,
                            color: yello,
                          ),
                        )
                      ],
                    ))
                
              ,SizedBox(height:size.height/95 ,)],
            ),
          ),
        ],
      ),
    );
  }
}
