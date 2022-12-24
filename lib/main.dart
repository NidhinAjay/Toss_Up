import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Dice());
}
class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override

  int a=1;
  int b=1;
  void rand()
  {
    a=Random().nextInt(6)+1;
    b=Random().nextInt(6)+1;
  }

  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("Dice Up",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold)),
        ),
        body:Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(onTap: ()
                  {
                    setState(() {
                      rand();
                    });
                  },
                    child: Expanded(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image:  DecorationImage(
                            image: AssetImage("image/dice $a.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20,),

                  InkWell(onTap: ()
                  {
                    setState(() {
                      rand();
                    });
                  },
                    child: Expanded(
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image:  DecorationImage(
                            image: AssetImage("image/dice $b.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

