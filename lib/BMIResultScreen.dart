import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final double result;
  final int age;
  final bool isMale;

  const BMIResultScreen({
    super.key,
    required this.result,
    required this.age,
    required this.isMale,
  });

  String get resultText {
    if (result < 18.5) {
      return 'Underweight';
    } else if (result >= 18.5 && result < 25) {
      return 'Normal';
    } else  {
      return 'Overweight';
    }
  }

  Color get resultColor {
    if (result < 18.5) {
      return Colors.blueAccent;
    } else if (result >= 18.5 && result < 25) {
      return Colors.greenAccent;
    } else  {
      return Colors.redAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'BMI Result',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Result Card
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Gender: ${isMale ? 'Male' : 'Female'}',
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Age: $age',
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      result.toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: resultColor,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      resultText,
                      style: TextStyle(
                        fontSize: 28,
                        color: resultColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            // Recalculate Button
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Recalculate',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
