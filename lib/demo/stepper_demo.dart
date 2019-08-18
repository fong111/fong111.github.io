import 'package:flutter/material.dart';
class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StepperDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.black,
              ),
              child: Stepper(
                //当前打开的步骤
                currentStep: _currentStep,
                onStepTapped: (int value){
                  setState(() {
                    _currentStep = value;
                  });
                },
                onStepContinue: (){
                  setState(() {
                    _currentStep < 2 ?_currentStep += 1 : _currentStep = 0;
                  });
                },
                onStepCancel: (){
                  setState(() {
                    _currentStep > 0 ?_currentStep -= 1 : _currentStep = 0;
                  });
                },
                steps: [
                  Step(
                    title: Text('Login'),
                    subtitle: Text('Login First'),
                    content: Text('Nulla ut nostrud consectetur aute nisi nisi mollit enim elit Lorem labore in anim.'),
                    isActive: _currentStep == 0,
                  ),
                  Step(
                    title: Text('Login2'),
                    subtitle: Text('Login Second'),
                    content: Text('Velit dolore non veniam cillum voluptate sit nostrud consequat.'),
                    isActive: _currentStep == 1,
                  ),
                  Step(
                    title: Text('Login3'),
                    subtitle: Text('Login Third'),
                    content: Text('Occaecat magna id eu sunt Lorem ullamco cillum id aliquip enim adipisicing cupidatat duis.'),
                    isActive: _currentStep == 2,
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