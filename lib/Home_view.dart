import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watering App'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent.shade700,
        leading: Icon(
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
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      color: Colors.greenAccent,
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 75,
                      width: 75,
                      color: Colors.greenAccent,
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
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                        child: Container(
                          height: 170,
                          color: Colors.greenAccent,
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
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                        child: Container(
                          height: 170,
                          color: Colors.blue,
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
