import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    Key? key,
  }) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;
  FocusNode? pin6FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    pin5FocusNode!.dispose();
    pin6FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  autofocus: true,
                  maxLength: 1,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    counterText: "",
                  ),
                  onChanged: (value) {
                    nextField(value, pin2FocusNode);
                  },
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextFormField(
                  maxLength: 1,
                  focusNode: pin2FocusNode,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    counterText: "",
                  ),
                  onChanged: (value) => nextField(value, pin3FocusNode),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextFormField(
                  maxLength: 1,
                  focusNode: pin3FocusNode,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    counterText: "",
                  ),
                  onChanged: (value) => nextField(value, pin4FocusNode),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextFormField(
                  maxLength: 1,
                  focusNode: pin4FocusNode,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    counterText: "",
                  ),
                  onChanged: (value) => nextField(value, pin5FocusNode),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextFormField(
                  maxLength: 1,
                  focusNode: pin5FocusNode,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    counterText: "",
                  ),
                  onChanged: (value) => nextField(value, pin6FocusNode),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: TextFormField(
                  maxLength: 1,
                  focusNode: pin6FocusNode,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    counterText: "",
                  ),
                  onChanged: (value) {
                    if (value.length == 1) {
                      pin4FocusNode!.unfocus();
                      // Then you need to check is the code is correct or not
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
