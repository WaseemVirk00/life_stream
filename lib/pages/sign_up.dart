import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_stream/Utils/routers.dart';

class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  _Sign_UpState createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  bool chnageButton = false;

  movetohome(BuildContext context) async {
    setState(() {
      chnageButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      chnageButton = false;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.asset(
                  "assets/images/typing.png",
                  fit: BoxFit.cover,
                  height: 200,
                  width: 200,
                ),
              ),
              Text(
                "First Name",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              TextField(
                decoration: InputDecoration(),
              ),
              Text(
                "Last Name",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(chnageButton ? 50 : 8),
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
                                  "Continue",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Term of use.Privacy policy",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
