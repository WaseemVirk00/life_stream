import 'package:flutter/material.dart';
import 'package:life_stream/Utils/styles.dart';

class MyInputField extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;

  MyInputField(
      {Key? key,
      required this.title,
      required this.hint,
      this.controller,
      this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: CustomStyles.headingStyle),
          Card(
            color: Colors.white,
            elevation: 2,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 14),
                            height: 52,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1.0),
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
          ),
        ],
      ),
    );
  }
}
