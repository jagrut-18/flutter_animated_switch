import 'package:flutter/material.dart';

class AnimatedSwitch extends StatefulWidget {
  @override
  _AnimatedSwitchState createState() => _AnimatedSwitchState();
}

class _AnimatedSwitchState extends State<AnimatedSwitch> {
  var isEnabled = false;
  final animationDuration = Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
              setState((){
                isEnabled = !isEnabled;
              });
            },
    child: AnimatedContainer(
      height: 40,
      width: 70,
      duration: animationDuration,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: isEnabled ? Color(0xff565671) : Color(0xff989fd5),
        border: Border.all(
        color: Colors.white,
          width: 2
        ),
        boxShadow: [
            BoxShadow(
            color: Colors.grey.shade400,
              spreadRadius: 2,
              blurRadius: 10,
            ),
        ],
      ),
      child: AnimatedAlign(
            duration: animationDuration,
            alignment: isEnabled ? Alignment.centerRight : Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 2),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            ),
          ),
          ),
          ),
    ),
    );
  }
}