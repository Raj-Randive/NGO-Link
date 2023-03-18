import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:ngo_link/Home_Page/navigation_bar/controller.dart';


class Nav_bar extends StatefulWidget {
  const Nav_bar({Key? key}) : super(key: key);

  @override
  State<Nav_bar> createState() => _Nav_barState();
}

class _Nav_barState extends State<Nav_bar> {
  late SMIBool usertigger;
  late SMIBool hometigger;
  late SMIBool chattigger;
  late SMIBool belltigger;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        border: Border.all(color: Colors.blue.shade50),
      ),
      child: Container(
          height: 55,
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.fromLTRB(18, 0, 18, 12),
          decoration: BoxDecoration(
            color: CupertinoColors.darkBackgroundGray.withOpacity(0.8),
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  hometigger.change(true);
                  Future.delayed(
                    Duration(seconds: 1),
                        () {
                      hometigger.change(false);
                    },
                  );

                },
                child: SizedBox(
                  height: 36,
                  width: 36,
                  child: RiveAnimation.asset(
                    "assets/rive_file/nav_icons.riv",
                    artboard: "HOME",
                    onInit: (artboard) {
                      StateMachineController controller =
                      RiveController.getRiveController(artboard,
                          stateMachineName: "HOME_interactivity");
                      hometigger =
                      controller.findSMI("active") as SMIBool;
                    },
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  usertigger.change(true);
                  Future.delayed(
                    Duration(seconds: 1),
                        () {
                      usertigger.change(false);
                    },
                  );
                  // print("HH");
                },
                child: SizedBox(
                  height: 36,
                  width: 36,
                  child: RiveAnimation.asset(
                    "assets/rive_file/nav_icons.riv",
                    artboard: "USER",
                    onInit: (artboard) {
                      StateMachineController controller =
                      RiveController.getRiveController(artboard,
                          stateMachineName: "USER_Interactivity");
                      usertigger =
                      controller.findSMI("active") as SMIBool;
                    },
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  chattigger.change(true);
                  Future.delayed(
                    Duration(seconds: 1),
                        () {
                      chattigger.change(false);
                    },
                  );
                  // print("HH");
                },
                child: SizedBox(
                  height: 36,
                  width: 36,
                  child: RiveAnimation.asset(
                    "assets/rive_file/nav_icons.riv",
                    artboard: "CHAT",
                    onInit: (artboard) {
                      StateMachineController controller =
                      RiveController.getRiveController(artboard,
                          stateMachineName: "CHAT_Interactivity");
                      chattigger = controller.findSMI("active") as SMIBool;
                    },
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  belltigger.change(true);
                  Future.delayed(
                    Duration(seconds: 1),
                        () {
                      belltigger.change(false);
                    },
                  ); // print("HH");
                },
                child: SizedBox(
                  height: 36,
                  width: 36,
                  child: RiveAnimation.asset(
                    "assets/rive_file/nav_icons.riv",
                    artboard: "BELL",
                    onInit: (artboard) {
                      StateMachineController controller =
                      RiveController.getRiveController(artboard,
                          stateMachineName: "BELL_Interactivity");
                      belltigger = controller.findSMI("active") as SMIBool;
                    },
                  ),
                ),
              ),
            ],
          )),
    );
  }
}