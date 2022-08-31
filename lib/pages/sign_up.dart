import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:life_stream/Utils/routers.dart';
import 'package:life_stream/Utils/styles.dart';

import '../components/header_text_widget.dart';
import '../components/input_field.dart';
import '../components/sign_up_input_fields.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  _Sign_UpState createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  bool chnageButton = false;
  DateTime _selectedDate = DateTime.now();

  movetohome(BuildContext context) async {
    setState(() {
      chnageButton = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.mainRoute);
    setState(() {
      chnageButton = false;
    });
  }

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
    return headerTextWidget.headerTextWidget(
        title: "Sign Up",
        subTitle:
            "Something will be written here but I don't know who will dothat",
        cwidget: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SignInputField(
              title: "Name",
              hint: "Enter your full name here",
            ),
            const SignInputField(
              title: "Phone Number",
              hint: "Enter your phone number here",
            ),
            const SignInputField(
              title: "Email",
              hint: "Enter your email here",
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
                  items: bloodGroupList.map<DropdownMenuItem<String>>(
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
            const SignInputField(
              title: "Password",
              hint: "Enter your password here",
            ),
            const SignInputField(
              title: "Confirm Password",
              hint: "Enter your confirm password here",
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(chnageButton ? 50 : 8),
                child: InkWell(
                  onTap: () => movetohome(context),
                  child: Hero(
                    tag: const Key("100"),
                    child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: chnageButton ? 50 : 250,
                        height: 50,
                        alignment: Alignment.center,
                        child: chnageButton
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                "Continue",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "Term of use.Privacy policy",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ));
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
