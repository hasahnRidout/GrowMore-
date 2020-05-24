import 'package:flutter/material.dart';

class PlantProgress extends StatefulWidget {
  @override
  _PlantProgressState createState() => _PlantProgressState();
}

class _PlantProgressState extends State<PlantProgress> {
  int _index = 0;
  bool _active = false;
  bool _stepActive = true;
  var _progress = 'Completed';
  var _stepProgress = 'Next Task ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Stepper(
              onStepCancel: () {
                setState(() {});
                _index = 0;
              },
              onStepContinue: () {
                setState(() {
                  _index++;
                });
                _stepActive = _active;
                _stepProgress = _progress;
                //_editing = _complete;
              },

              steps: [
                Step(
                    title: Text("Plant is ready to plant"),
                    content: Text(""),
                    subtitle: Text("$_stepProgress"),
                    isActive: _stepActive,
                    state: StepState.complete),
                Step(
                    title: Text("1st day passed"),
                    content: Text(""),
                    subtitle: Text("$_stepProgress"),
                    isActive: _stepActive,
                    state: StepState.editing),
                Step(
                    title: Text("Plant is Growing"),
                    content: Text(""),
                    subtitle: Text("$_stepProgress"),
                    isActive: _stepActive,
                    state: StepState.editing),
                Step(
                    title: Text(" Greate Job, plant is growing"),
                    content: Text(""),
                    subtitle: Text("$_stepProgress"),
                    isActive: _stepActive,
                    state: StepState.editing),
                Step(
                    title: Text(" Excellent, You are caring plants"),
                    content: Text(""),
                    subtitle: Text("$_stepProgress"),
                    isActive: _stepActive,
                    state: StepState.editing),
                Step(
                    title: Text("You are colse to complete"),
                    content: Text(""),
                    subtitle: Text("$_stepProgress"),
                    isActive: _stepActive,
                    state: StepState.editing),
                Step(
                    title: Text("Plant has grown"),
                    content: Text(""),
                    subtitle: Text("Compled"),
                    isActive: _stepActive,
                    state: StepState.complete),
                Step(
                    title: Text("Completed"),
                    content: Text(""),
                    subtitle: Text("Compled"),
                    isActive: _stepActive,
                    state: StepState.complete),
              ],
              currentStep: _index,
              onStepTapped: (index) {
                setState(() {
                  _index = index;
                });
              },
              // controlsBuilder: (BuildContext context,
              //         {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
              //     Container(),
            ),
          ),
        ],
      ),
    );
  }
}
