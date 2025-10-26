
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BMIResultScreen.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  double height=150;
  int age=10;
  double weight=50;
  bool ismale=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('BMICalculator',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Gender Row
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Male card
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            ismale=true;
                          });
                        },
                        child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                              color: ismale?Colors.pinkAccent:Colors.grey[900],
                              borderRadius: BorderRadius.circular(20),),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:const [
                                Icon(Icons.male_rounded,size: 110,color: Colors.white,),
                                SizedBox(height: 10),
                                Text('MALE',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)
                              ],
                            ),
                          ),
                      ),

                      // Female card
                     GestureDetector(
                       onTap: (){
                         setState(() {
                           ismale=false;
                         });
                       },
                       child: Container(
                          width: 200,
                          decoration: BoxDecoration(
                            color: !ismale?Colors.pinkAccent:Colors.grey[900],
                            borderRadius: BorderRadius.circular(20),),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:const [
                              Icon(Icons.female_rounded,size: 100,color: Colors.white,),
                              SizedBox(height: 10),
                              Text('FEMALE',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                     ),

                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Height card
              Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(20),),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Height',style: TextStyle(fontSize: 25,color: Colors.grey),),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(height.toInt().toString(),style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white)),
                            Text('cm',style: TextStyle(fontSize: 20,color: Colors.grey)),
                          ],
                        ),
                        Slider(value: height,
                            activeColor: Colors.pinkAccent,
                            min: 100,
                            max: 250,
                            onChanged: (value){
                              setState(() {
                                height=value;
                              }
                              );
                            })
                      ],
                    ),
                  ),
              ),
              const SizedBox(height: 20),
              // Weight and Age Row
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Male card
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(20),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Weight',style: TextStyle(fontSize: 25,color: Colors.grey),),
                          Text(weight.toInt().toString(),style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[800],
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(6),


                                ),
                                  onPressed: (){
                                      setState(() {
                                        if(weight>50)weight--;
                                      });
                                  }
                                  , child: Icon(Icons.remove,size: 30,color: Colors.white,)),
                              ElevatedButton(
                                  style:ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[800],
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(6),

                                  ),
                                  onPressed: (){
                                    setState(() {
                                      weight++;
                                    });

                                  }
                                  , child: Icon(Icons.add,size: 30,color: Colors.white,)),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(20),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Age',style: TextStyle(fontSize: 25,color: Colors.grey),),
                          Text(age.toInt().toString(),style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  style:ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[800],
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(6),

                                  ),
                                  onPressed:
                                      (){
                                    setState(() {
                                      if(age>10)age--;
                                    });

                                  }
                                  , child: Icon(Icons.remove,size: 30,color: Colors.white,)),
                              ElevatedButton(
                                  style:ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[800],
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(6),

                                  ),
                                  onPressed:
                                      (){
                                    setState(() {
                                      age++;
                                    });

                                  }
                                  , child: Icon(Icons.add,size: 30,color: Colors.white,)),
                            ],
                          )

                        ],
                      ),
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Calculate Button
              Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: Colors.pinkAccent,),
                  onPressed: (){
                    double bmi = weight / ((height / 100)*(height / 100));
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BMIResultScreen(result: bmi,
                      age: age,
                      isMale: ismale,)));
                   /* showDialog(
                      useSafeArea: true,
                      barrierDismissible: false,
                      context: context,
                      builder: (context) =>AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: Colors.grey[900],
                        title: Text('BMI Result',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                        content: Text('Your BMI is ${bmi.toStringAsFixed(2)}',style: TextStyle(fontSize:25,color: Colors.pinkAccent),),
                        actions: [
                          TextButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: Text('OK',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),

                          )
                        ],

                      )
                    );*/
                },
                child: Text('Calculate',style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),),
                ),
              )

            ],
          ),
      ),

    );
  }
}


