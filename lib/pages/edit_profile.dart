import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              const Text(
                "Edit Profile",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        // image: DecorationImage(
                        //     fit: BoxFit.cover,
                        //     image: NetworkImage(
                        //       "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                        //     ))
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Colors.redAccent,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              buildTextField("First Name", "", false),
              buildTextField("Last Name", "", false),
              buildTextField("E-mail", "", false),
              buildTextField("Phone Number", "", false),
              const Text(
                'Gender : ',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: GroupButton(
                    spacing: 10,
                    isRadio: true,
                    runSpacing: 10.0,
                    mainGroupAlignment: MainGroupAlignment.start,
                    direction: Axis.horizontal,
                    onSelected: (index, isSelected) => print(
                        '$index button is ${isSelected ? 'selected' : 'unselected'}'),
                    buttons: const ["Male", "Female", "Other"],
                    selectedButton: 0,
                    selectedTextStyle: TextStyle(
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
                      BoxShadow(color: Colors.transparent)
                    ],
                    unselectedShadow: <BoxShadow>[
                      BoxShadow(color: Colors.transparent)
                    ],
                  )),
              Text(
                'Blood Group : ',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: GroupButton(
                  spacing: 10,
                  isRadio: true,
                  runSpacing: 10.0,
                  mainGroupAlignment: MainGroupAlignment.start,
                  direction: Axis.horizontal,
                  onSelected: (index, isSelected) => print(
                      '$index button is ${isSelected ? 'selected' : 'unselected'}'),
                  buttons: const [
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
                  selectedShadow: const <BoxShadow>[
                    BoxShadow(color: Colors.transparent)
                  ],
                  unselectedShadow: const <BoxShadow>[
                    BoxShadow(color: Colors.transparent)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlineButton(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: const Text("CANCEL",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.redAccent,
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
    );
  }
}

class GenderField extends StatelessWidget {
  final List<String> genderList;

  GenderField(this.genderList);

  @override
  Widget build(BuildContext context) {
    String? select;
    Map<int, String> mappedGender = genderList.asMap();

    return StatefulBuilder(
      builder: (_, StateSetter setState) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          ...mappedGender.entries.map(
            (MapEntry<int, String> mapEntry) => Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio(
                    activeColor: Theme.of(context).primaryColor,
                    groupValue: select,
                    value: genderList[mapEntry.key],
                    onChanged: (value) =>
                        setState(() => select = value as String?),
                  ),
                  Text(mapEntry.value)
                ]),
          ),
        ],
      ),
    );
  }
}
