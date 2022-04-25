import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_button/group_button.dart';
import 'package:life_stream/Utils/styles.dart';
import 'package:life_stream/pages/search_bar.dart';

import '../components/custom_seacrhdelegate.dart';
import '../components/input_field.dart';
import 'donors_list.dart';

class FindBloodPage extends StatefulWidget {
  const FindBloodPage({Key? key}) : super(key: key);

  @override
  _FindBloodPageState createState() => _FindBloodPageState();
}

class _FindBloodPageState extends State<FindBloodPage> {
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
              SizedBox(
                height: 50,
              ),
              Text("Find Donors",
                  style: GoogleFonts.heebo(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
              SizedBox(
                height: 10,
              ),
              Text("Search for Blood donors around you",
                  style: GoogleFonts.heebo()),
              SizedBox(
                height: 15,
              ),
              Text("Choose Blood Group", style: GoogleFonts.heebo()),
              SizedBox(
                height: 10,
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
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
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
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Material(
                  color: const Color(0xFFDE2C2C),
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DonorsList()));
                    },
                    child: Hero(
                        tag: Key("100"),
                        child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: 250,
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text(
                              "Search Donor",
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
}
