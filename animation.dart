import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class MyA1 extends StatefulWidget {
  @override
  _MyA1State createState() => _MyA1State();
}

class _MyA1State extends State<MyA1> with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    print(myanicon);

    animation = CurvedAnimation(parent: myanicon, curve: Curves.bounceInOut)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });

    print(animation);

    myanicon.forward();
    print(myanicon);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.pinkAccent[400],
      child: Center(
        child:Container(
          height: 100,
          width: 350,
          color: Colors.deepPurple[700],
          child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 20.0,
                  height: 100.0,
                ),
                Text(
                  "𝓑𝓮",
                  style: TextStyle(fontSize: 43.0,color: Colors.yellowAccent),
                ),
                SizedBox(
                  width: 20.0,
                  height: 100.0,
                ),
               RotateAnimatedTextKit(
                  onTap: () {
                    print("Tap Event");
                  },
                  isRepeatingAnimation: true,
                  totalRepeatCount: 10,
                  
                  text: ["𝒜𝒲𝐸𝒮𝒪𝑀𝐸", "𝐻𝒜𝒫𝒫𝒴", "𝒮𝒜𝐹𝐸"],
                  // alignment: Alignment(1.0, 0.5),
                  textStyle: TextStyle(fontSize: 40.0, fontFamily: "Horizon",color: Colors.lightGreenAccent[400]),
                ),
              ],
            ),
        ),
      ),
    );
  }
}