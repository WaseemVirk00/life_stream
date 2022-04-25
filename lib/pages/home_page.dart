import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:intl/intl.dart';
import 'package:life_stream/Utils/styles.dart';
import 'package:life_stream/generated/assets.dart';
import 'package:lottie/lottie.dart';

import '../components/custom_seacrhdelegate.dart';
import '../components/input_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _selectedTime =
      DateFormat("hh:mm a").format(DateTime.now()).toString();
  DateTime _selectedDate = DateTime.now();
  final String _startTime =
      DateFormat("hh:mm a").format(DateTime.now()).toString();
  final TextEditingController _noteController = TextEditingController();
  int _selectedRemind = 1;
  List<int> remindList = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text("Select Blood Type", style: CustomStyles.mediumTextStyle),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: GroupButton(
                      spacing: 10,
                      isRadio: true,
                      runSpacing: 10.0,
                      mainGroupAlignment: MainGroupAlignment.start,
                      direction: Axis.horizontal,
                      onSelected: (index, isSelected) => print(
                          '$index button is ${isSelected ? 'selected' : 'unselected'}'),
                      buttons: [
                        "A+",
                        "B+",
                        "AB+",
                        "O+",
                        "A-",
                        "B-",
                        "AB-",
                        "0-"
                      ],
                      selectedButton: 0,
                      selectedTextStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                      unselectedTextStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                      selectedColor: Colors.red,
                      unselectedColor: Colors.grey[300],
                      selectedBorderColor: Colors.red,
                      unselectedBorderColor: Colors.grey[500],
                      borderRadius: BorderRadius.circular(5.0),
                      selectedShadow: <BoxShadow>[
                        const BoxShadow(color: Colors.transparent)
                      ],
                      unselectedShadow: <BoxShadow>[
                        const BoxShadow(color: Colors.transparent)
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              MyInputField(
                title: "Location",
                hint: "Enter Location",
                widget: IconButton(
                  icon: const Icon(
                    Icons.location_city,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    showSearch(
                        context: context, delegate: CustomSeacrhdelegate());
                  },
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: MyInputField(
                      title: "Date",
                      hint: DateFormat.yMd().format(_selectedDate),
                      widget: IconButton(
                        icon: const Icon(
                          Icons.calendar_today_outlined,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          _getDateFromUser();
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyInputField(
                      title: "Time",
                      hint: _startTime,
                      widget: IconButton(
                        icon: const Icon(
                          Icons.access_time_rounded,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          _getTimeFromUser();
                        },
                      ),
                    ),
                  ),
                ],
              ),
              MyInputField(
                title: "How many units do you want?",
                hint: " $_selectedRemind Units",
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
                  items: remindList.map<DropdownMenuItem<String>>(
                    (int value) {
                      return DropdownMenuItem<String>(
                        value: value.toString(),
                        child: Text(value.toString()),
                      );
                    },
                  ).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      _selectedRemind = int.parse(value!);
                    });
                  },
                ),
              ),
              MyInputField(
                title: "Additional Notes",
                hint: "",
                controller: _noteController,
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Material(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (_) => Dialog(
                                backgroundColor: Colors.white.withOpacity(0.1),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      Assets.imagesSuccessDone,
                                      colorBlendMode: BlendMode.color,
                                    ),
                                    const Text(
                                      "Blood Requested Successfully",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ));
                    },
                    child: Hero(
                        tag: const Key("100"),
                        child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: 250,
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text(
                              "Request for blood",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
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

  _getTimeFromUser() async {
    var pickedTime = await _showTimePicker();
    String _formatedTime = pickedTime.format(context);
    if (pickedTime == null) {
      print("Something went wrong");
    } else {
      _selectedTime = _formatedTime;
    }
  }

  _showTimePicker() {
    return showTimePicker(
        initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: TimeOfDay(
            hour: int.parse(_selectedTime.split(":")[0]),
            minute: int.parse(_selectedTime.split(":")[1].split(" ")[0])));
  }
}
