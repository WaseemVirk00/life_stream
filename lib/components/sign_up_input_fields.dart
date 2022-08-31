import 'package:flutter/material.dart';
import 'package:life_stream/Utils/styles.dart';

class SignInputField extends StatelessWidget {
  final String? title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;

  const SignInputField(
      {Key? key,
      this.title = "",
      required this.hint,
      this.controller,
      this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title!.isNotEmpty
            ? Text("$title", style: CustomStyles.headingStyle)
            : Container(),
        Container(
          padding: const EdgeInsets.only(top: 5.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 14),
                        height: 52,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                readOnly: widget == null ? false : true,
                                autofocus: false,
                                cursorColor: Colors.grey[100],
                                controller: controller,
                                style: CustomStyles.subtitleStyle,
                                decoration: InputDecoration(
                                  hintText: hint,
                                  hintStyle: CustomStyles.subtitleStyle,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            widget == null
                                ? Container()
                                : Container(
                                    child: widget,
                                  )
                          ],
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
