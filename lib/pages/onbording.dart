import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_stream/models/onboarding_content_model.dart';

import 'input_mobile_number.dart';

class OnBording extends StatefulWidget {
  @override
  _OnBordingState createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildExpanded,
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.all(40),
            width: 250,
            child: ElevatedButton(
              child: Text(
                currentIndex == contents.length - 1 ? "Continue" : "Next",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => InputMobileNumber(),
                    ),
                  );
                }
                _controller.nextPage(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.bounceIn,
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Expanded get buildExpanded {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: contents.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (_, i) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 60, right: 60, left: 60),
              child: Column(
                children: [
                  Image.asset(
                    contents[i].image,
                    height: 200,
                  ),
                  Text(
                    contents[i].title,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    contents[i].discription,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
