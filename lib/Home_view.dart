import 'package:flutter/material.dart';

import 'Components/Action_card.dart';
import 'Components/Dash_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bool value = false;
  bool isSwitch = false;
  
  get onChanged => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('WATERING APP'),
        centerTitle: true,
        backgroundColor: Colors.green.shade500,
        titleTextStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        leading: const Icon(
            Icons.menu, color: Colors.black,), // left side component >> items, right side >> actions
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/images/house.jpg')
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Dash(icon: Icons.sunny, data: '60%'),
                    Dash(icon: Icons.thermostat, data: '30c'),
                    Dash(icon: Icons.water_drop_outlined, data: '60%'),
                    Dash(icon: Icons.wind_power_sharp, data: '60%'),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        height: 170,
                        // color: Colors.yellowAccent.shade100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          color: Colors.yellowAccent,
                        ),
                        child: Controller(icon: Icons.sunny, data: 'Lighting'),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                        child: Container(
                          height: 170,
                          //color: Colors.redAccent.shade100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40.0)),
                            color: Colors.redAccent,
                          ),
                          child: Controller(icon: Icons.thermostat, data: 'Temperature'),
                        )
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        height: 170,
                        //color: Colors.blue,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          color: Colors.blue,
                        ),
                        child: Controller(icon: Icons.water_drop_outlined, data: 'Humidity'),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                        child: Container(
                          height: 170,
                          //color: Colors.greenAccent,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40.0)),
                            color: Colors.greenAccent,
                          ),
                          child: Controller(icon: Icons.wind_power_sharp, data: 'Ventilation'),
                        )
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
