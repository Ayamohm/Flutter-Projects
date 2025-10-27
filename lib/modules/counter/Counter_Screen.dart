import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//statless contain one class provide widget
//statfull contain provide state from this widget


class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
int counter=1;
@override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:  Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                      print(counter);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),),
                  child: Icon(Icons.add, color: Colors.white, size: 30),

              ),
               Container(
                 width: 90,
                 height: 90,
                  alignment: Alignment.center,
                 child: Text('${counter}',style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900)),

               ),
                TextButton(
                   onPressed: () {
                     setState(() {
                       counter--;
                       print(counter);
                     });
                   },
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.blue,
                     shape: CircleBorder(),
                     padding: EdgeInsets.all(20),),
                   child: Icon(Icons.remove, color: Colors.white, size: 30),
                 ),

            ]
          ),
      ),
    );
  }
}
