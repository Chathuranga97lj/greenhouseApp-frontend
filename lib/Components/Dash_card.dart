import 'package:flutter/material.dart';

class Dash extends StatefulWidget {
  // const Dash({Key? key}) : super(key: key);

  IconData icon;
  String data;

  Dash({super.key, required this.icon, required this.data});

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 75,
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            widget.icon,
            color: Colors.black,
            size: 40,
          ),
          Text(widget.data, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
        ],
      ),
    );
  }
}
