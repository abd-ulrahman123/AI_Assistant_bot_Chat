
import 'package:ai_chatbot_ui/Utils/circleavtar.dart';
import 'package:ai_chatbot_ui/Utils/customcontainer.dart';
import 'package:ai_chatbot_ui/constants.dart/constants.dart';
import 'package:ai_chatbot_ui/screens/botscreen.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: blakk, //Colors.black,
        body: SafeArea(
            minimum: const EdgeInsets.only(top: 25, right: 13, left: 13, bottom: 14),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: size.height / 12,
                width: size.width,
                child: Row(
                  mainAxisSize:
                      MainAxisSize.min,
                  children: [
                    CAvatar(
                      colur: const Color.fromARGB(255, 41, 138, 46),
                      avchildWidget: const Icon(Icons.bolt_sharp,color:yello ,size:24 ,),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    CAvatar(
                        avchildWidget: const Icon(
                      Icons.pix_sharp,
                      color: Color.fromARGB(255, 207, 200, 219),
                      size: 15,
                    )),
                    CAvatar(
                        avchildWidget: const Icon(
                      Icons.notifications_none_sharp,
                      color: Color.fromARGB(255, 207, 200, 219),
                      size: 15,
                    )),
                    CAvatar(
                        avchildWidget: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                                '/home/hamed/Desktop/ai_chatbot_ui/assets/1.jpg')))
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              const Text(
                "Connect Data",
                style: TextStyle(
                    color: Colors.white, letterSpacing: 2, fontSize: 21),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CAvatar(
                      avchildWidget: const Icon(
                    Icons.blur_circular_sharp,
                    color: Color.fromARGB(255, 207, 200, 219),
                  )),
                  CAvatar(
                      avchildWidget: const Icon(
                    Icons.person_search_sharp,
                    color: Color.fromARGB(255, 207, 200, 219),
                  )),
                  CAvatar(
                      avchildWidget: const Icon(
                    Icons.amp_stories_rounded,
                    color: Color.fromARGB(255, 207, 200, 219),
                  )),
                  Container(
                    height: 50,
                    width: size.width /
                        3.4, 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: yello,
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 18,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("ROI Calculation",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontSize: 22,
                      letterSpacing: 1)),
              StatsCard(
                  CAvatar(
                      colur: wite,
                      avchildWidget: const Icon(
                        Icons.alarm,
                        color: blakk,
                        size: 16,
                      )),
                  "Time spent on ad",
                  "86h",
                  size.height / 8,
                  yello,
                  blakk) //CrdOfstats(yello, 200, null),
              ,
              StatsCard(
                CAvatar(
                    colur: Colors.white,
                    avchildWidget: const Icon(
                      Icons.money_outlined,
                      color: blakk,
                      size: 16,
                    )),
                "Money spent on ad",
                "19E",
                size.height / 8,
                wite,
                blakk,
              ) //CrdOfstats(wite, 200, null),
              ,
              StatsCard(
                  CAvatar(
                    colur: const Color.fromARGB(31, 252, 114, 114),
                    avchildWidget: const Icon(
                      Icons.timelapse_outlined,
                      color: wite,
                      size: 16,
                    ),
                  ),
                  "Total time saved",
                  "23h",
                  size.height / 8,
                  null,
                  null) //CrdOfstats(beeg, 200, null),
              ,
              const SizedBox(
                height: 9,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(right: 4),
                  height: size.height / 13,
                  width: size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(221, 37, 34, 34)),
                  child: Row(children: [
                    CAvatar(
                        avchildWidget: const Icon(
                      Icons.crop_square_sharp,
                      color: Color.fromARGB(255, 207, 200, 219),
                      size: 20,
                    )),
                    CAvatar(
                      avchildWidget: const Icon(
                        Icons.data_exploration_outlined,
                        color: wite,
                        size: 20,
                      ),
                    ),
                    CAvatar(
                      avchildWidget: const Icon(
                        Icons.collections_outlined,
                        color: wite,
                        size: 20,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Botscreen()));
                      },
                      child: Container(
                        height: 50,
                        width: size.width /
                            3.4, 
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: yello,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Chat"),
                            Icon(
                              Icons.bolt,
                              color: blakk,
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
                ),
              ),
            ]) 
            ));
  }
}
