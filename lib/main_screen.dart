import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_project/step_progress_indicator/setp_progress_indicator_screen.dart';

class MainScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _buildScreenNavigator(context, StepProgressIndicatorScreen(),
              'step_progress_indigctor'),
        ],
      ),
    );
  }

  Widget _buildScreenNavigator(dynamic context, dynamic screen, String title) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => StepProgressIndicatorScreen()),
          );
        },
        child: Text('step_progress_indicator'));
  }
}
