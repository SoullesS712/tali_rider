import 'package:flutter/material.dart';
import 'package:tali_rider/model/location_model.dart';
import 'package:provider/provider.dart';

var isEnabled = false;

class AnimatedSwitch extends StatefulWidget {
  const AnimatedSwitch({Key? key}) : super(key: key);

  @override
  _AnimatedSwitchState createState() => _AnimatedSwitchState();
}

class _AnimatedSwitchState extends State<AnimatedSwitch> {
  final animationDuration = const Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isEnabled = !isEnabled) {
            print('Actived');
          } else {
            print('Unactived');
          }
        });
      },
      child: AnimatedContainer(
        height: 70,
        width: 140,
        duration: animationDuration,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: isEnabled
              ? Color.fromARGB(255, 137, 216, 161)
              : Color.fromARGB(255, 255, 138, 138),
          border: Border.all(color: Colors.white, width: 2),
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
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
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
