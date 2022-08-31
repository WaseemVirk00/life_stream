import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class headerTextWidget extends StatefulWidget {
  final String title;
  final String subTitle;
  final Widget cwidget;
  Function()? backPressed;

  headerTextWidget.headerTextWidget(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.cwidget,
      this.backPressed})
      : super(key: key);

  @override
  State<headerTextWidget> createState() => _headerTextWidgetState();
}

class _headerTextWidgetState extends State<headerTextWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: null,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    widget.backPressed != null
                        ? MaterialButton(
                            onPressed: widget.backPressed,
                            color: Colors.white,
                            textColor: Colors.black,
                            child: const Center(
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 18,
                              ),
                            ),
                            padding: const EdgeInsets.all(6),
                            shape: const CircleBorder(),
                          )
                        : const SizedBox(
                            width: 10,
                          ),
                    Text(widget.title,
                        style: GoogleFonts.heebo(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ],
                ),
                widget.backPressed == null
                    ? Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(widget.subTitle,
                                style: GoogleFonts.heebo()),
                          ),
                        ],
                      )
                    : Container(),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: widget.cwidget,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
