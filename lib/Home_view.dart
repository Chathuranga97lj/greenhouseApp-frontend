import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final bool value = false;
  
  get onChanged => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Watering App'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent.shade700,
        leading: const Icon(
            Icons.menu), // left side component >> items, right side >> actions
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.asset('assets/images/house.jpg')
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.sunny,
                            color: Colors.black,
                            size: 40,
                          ),
                          Text('60%', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                        ],
                      ),
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      color: Colors.greenAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.thermostat,
                            color: Colors.black,
                            size: 40,
                          ),
                          Text('30c', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                        ],
                      ),
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.water_drop_outlined,
                            color: Colors.black,
                            size: 40,
                          ),
                          Text('60%', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                        ],
                      ),
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      color: Colors.greenAccent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.wind_power_sharp,
                            color: Colors.black,
                            size: 40,
                          ),
                          Text('60%', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                        ],
                      ),
                    ),
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
                        color: Colors.blue,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                const Icon(Icons.sunny, size: 50,),
                                Switch(value: value,
                                    onChanged: (bool value) {
                                      setState(() {
                                        value = value;
                                      });
                                    }
                                ),
                              ],
                            ),
                            const Text("Lighting", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                        child: Container(
                          height: 170,
                          color: Colors.greenAccent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  const Icon(Icons.thermostat, size: 50,),
                                  Switch(value: value,
                                      onChanged: (bool value) {
                                        setState(() {
                                          value = value;
                                        });
                                      }
                                  ),
                                ],
                              ),
                              const Text("Temperature", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)
                            ],
                          ),
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
                        color: Colors.greenAccent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                const Icon(Icons.water_drop_outlined, size: 50,),
                                Switch(value: value,
                                    onChanged: (bool value) {
                                      setState(() {
                                        value = value;
                                      });
                                    }
                                ),
                              ],
                            ),
                            const Text("Humidity", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                        child: Container(
                          height: 170,
                          color: Colors.blue,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  const Icon(Icons.wind_power_rounded, size: 50,),
                                  Switch(value: value,
                                      onChanged: (bool value) {
                                        setState(() {
                                          value = value;
                                        });
                                      }
                                  ),
                                ],
                              ),
                              const Text("Ventilation", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)
                            ],
                          ),
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
