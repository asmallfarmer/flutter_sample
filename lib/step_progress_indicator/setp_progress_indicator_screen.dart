import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class StepProgressIndicatorScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularStepProgressIndicator(
              totalSteps: 60,
              currentStep: 45,
              stepSize: 4,
              // selectedStepSize: 5,
              width: 300,
              height: 300,
              roundedCap: (_, isSelected) => isSelected,
              selectedColor: Colors.blue,
              unselectedColor: Colors.grey[400],
              // gradientColor: LinearGradient(
              //   colors: [Colors.red, Colors.grey],
              // ),
            ),
            CircularStepProgressIndicator(
              totalSteps: 60,
              currentStep: 45,
              width: 100,
              roundedCap: (_, isSelected) => isSelected,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircularStepProgressIndicator(
                  totalSteps: 60,
                  currentStep: 32,
                  width: 100,
                  roundedCap: (_, isSelected) => isSelected,
                  child: Center(child: Text('32')),
                  gradientColor: LinearGradient(
                    colors: [Colors.red, Colors.blue],
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
