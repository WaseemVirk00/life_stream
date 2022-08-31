import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                          fit: BoxFit.cover,
                          height: 200,
                          width: 200,
                        ),
                      ),
                      const Text(
                        "OTP Verification",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
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
                      const Text(
                        "on this mobile number",
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Enter Mobile Number",
                      ),
                      Form(
                        key: _formkey,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40.0, right: 40),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            maxLength: 11,
                            decoration: const InputDecoration(),
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
                      const SizedBox(
                        height: 40,
                      ),
                      Material(
                        color: Colors.red,
                        borderRadius:
                            BorderRadius.circular(chnageButton ? 50 : 8),
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
