import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'otp_mobile_number.dart';

class InputMobileNumber extends StatefulWidget {
  const InputMobileNumber({Key? key}) : super(key: key);

  @override
  _InputMobileNumberState createState() => _InputMobileNumberState();
}

class _InputMobileNumberState extends State<InputMobileNumber> {
  String name = "";
  bool chnageButton = false;
  final _formkey = GlobalKey<FormState>();

  movetohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        chnageButton = true;
      });
      await Future.delayed(Duration(seconds: 1));

      await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OtpMobileNumber(),
          ));
      setState(() {
        chnageButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Material(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Hero(
                        tag: "Hero",
                        child: Image.asset(
                          "assets/images/typing.png",
                          fit: BoxFit.cover, height: 200, width: 200,
                        ),
                      ),
                      Text(
                        "OTP Verification",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "We will send you and",
                          ),
                          Text(
                            " One Time Password",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                      Text(
                        "on this mobile number",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Enter Mobile Number",
                      ),
                      Form(
                        key: _formkey,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40.0, right: 40),
                          child: TextFormField(
                            decoration: InputDecoration(),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Phone Number cannot be empty";
                              } else if (value.length != 11) {
                                return "Length should be at least 11";
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              name = value;
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Material(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(
                            chnageButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => movetohome(context),
                          child: Hero(
                            tag: Key("100"),
                            child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                width: chnageButton ? 50 : 250,
                                height: 50,
                                alignment: Alignment.center,
                                child: chnageButton
                                    ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                                    : Text(
                                  "Get OTP",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                      )
                    ],
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
