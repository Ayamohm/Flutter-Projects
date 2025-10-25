import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BMICalculator(),
  ));
}

class BMICalculator extends StatefulWidget {
  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  double? bmiResult;

  void calculateBMI() {
    double? weight = double.tryParse(weightController.text);
    double? height = double.tryParse(heightController.text);

    if (weight != null && height != null && height > 0) {
      setState(() {
        bmiResult = weight / ((height / 100) * (height / 100));
      });
    } else {
      setState(() {
        bmiResult = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Weight (kg)'),
            ),
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Height (cm)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: calculateBMI,
              child: Text('Calculate'),
            ),
            SizedBox(height: 20),
            if (bmiResult != null)
              Text(
                'Your BMI: ${bmiResult!.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
