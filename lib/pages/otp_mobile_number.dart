import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:life_stream/Utils/routers.dart';
import 'package:life_stream/components/otp_form.dart';

class OtpMobileNumber extends StatefulWidget {
  const OtpMobileNumber({Key? key}) : super(key: key);

  @override
  _OtpMobileNumberState createState() => _OtpMobileNumberState();
}

class _OtpMobileNumberState extends State<OtpMobileNumber> {
  String name = "";
  bool chnageButton = false;
  bool key1 = false;
  bool key2 = false;
  bool key3 = false;
  bool key4 = false;
  bool key5 = false;
  bool key6 = false;

  movetohome(BuildContext context) async {
    setState(() {
      chnageButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.signUpRoute);
    setState(() {
      chnageButton = false;
    });
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
                            "Enter the OTP sent to ",
                          ),
                          Text(
                            " 03224280522",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      OtpForm(),
                      SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          // OTP code resend
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't receive the OTP? ",
                            ),
                            Text(
                              " RESEND OTP",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Material(
                        color:  Colors.red,
                        borderRadius:
                            BorderRadius.circular(chnageButton ? 50 : 8),
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
                                        "VERIFY & PROCEED",
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
