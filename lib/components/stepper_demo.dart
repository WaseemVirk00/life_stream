import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:life_stream/components/sign_up_input_fields.dart';

import '../Utils/routers.dart';
import '../Utils/styles.dart';

class StepperDemo extends StatefulWidget {
  const StepperDemo({Key? key}) : super(key: key);

  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  bool chnageButton = false;
  DateTime _selectedDate = DateTime.now();
  String _selectedbloodGroup = "None";
  List<String> bloodGroupList = [
    "A+",
    "B+",
    "AB+",
    "O+",
    "A-",
    "B-",
    "AB-",
    "0-"
  ];
  String _selectedGender = "None";
  List<String> genderList = ["Male", "Female", "Transgender"];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Flutter Stepper Demo'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Stepper(
                type: StepperType.vertical,
                physics: const ScrollPhysics(),
                currentStep: _currentStep,
                controlsBuilder: (context, _) {
                  return Row(
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        child: Text(_currentStep == 3 ? 'Sign Up' : 'Proceed'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Back'),
                      ),
                    ],
                  );
                },
                onStepTapped: (step) async {
                  setState(() async {
                    if (step == 3) {
                      await Future.delayed(const Duration(seconds: 1));
                      await Navigator.pushNamed(context, MyRoutes.mainRoute);
                    }
                    // tapped(step);
                    print("step $step");
                  });
                },
                onStepContinue: continued,
                onStepCancel: cancel,
                steps: <Step>[
                  Step(
                    title: const Text('Email'),
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        SignInputField(
                          hint: "Enter your email here",
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text('Phone Number'),
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        SignInputField(
                          title: "Phone Number",
                          hint: "Enter your phone number here",
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 1
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text('Passwords'),
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        SignInputField(
                          title: "Password",
                          hint: "Enter your password here",
                        ),
                        SignInputField(
                          title: "Confirm Password",
                          hint: "Enter your confirm password here",
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 2
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text('Personal Detail'),
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SignInputField(
                          title: "Name",
                          hint: "Enter your full name here",
                        ),
                        SignInputField(
                            title: "Birth Day",
                            hint: DateFormat.yMd().format(_selectedDate),
                            widget: IconButton(
                              icon: const Icon(
                                Icons.calendar_today_outlined,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                _getDateFromUser();
                              },
                            )),
                        SignInputField(
                            title: "Gender",
                            hint: _selectedGender,
                            widget: DropdownButton(
                              underline: Container(
                                height: 0,
                              ),
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.grey,
                              ),
                              iconSize: 32,
                              elevation: 4,
                              style: CustomStyles.subtitleStyle,
                              items: genderList.map<DropdownMenuItem<String>>(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value.toString(),
                                    child: Text(value.toString()),
                                  );
                                },
                              ).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  _selectedGender = value!;
                                });
                              },
                            )),
                        SignInputField(
                            title: "Blood Group",
                            hint: _selectedbloodGroup,
                            widget: DropdownButton(
                              underline: Container(
                                height: 0,
                              ),
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.grey,
                              ),
                              iconSize: 32,
                              elevation: 4,
                              style: CustomStyles.subtitleStyle,
                              items:
                                  bloodGroupList.map<DropdownMenuItem<String>>(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value.toString(),
                                    child: Text(value.toString()),
                                  );
                                },
                              ).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  _selectedbloodGroup = value!;
                                });
                              },
                            )),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 3
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 3 ? setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  }

  _getDateFromUser() async {
    DateTime? _pickerDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015),
        lastDate: DateTime(2121));

    if (_pickerDate != null) {
      setState(() {
        _selectedDate = _pickerDate;
      });
    } else {
      print("Something went wrong");
    }
  }
}
