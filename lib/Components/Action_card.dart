import 'package:flutter/material.dart';

class Controller extends StatefulWidget {
  // const Controller({Key? key}) : super(key: key);

  IconData icon;
  String data;

  Controller({super.key, required this.icon, required this.data});

  @override
  State<Controller> createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(widget.icon, size: 50,),
            Switch(value: isSwitch,
              onChanged: (value) {
                setState(() {
                  isSwitch = value;
                });
              },
              activeTrackColor: Colors.lightGreenAccent,
              activeColor: Colors.green,
            ),
          ],
        ),
        Text(widget.data, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)
      ],
    );
  }
}
