import 'package:flutter/material.dart';

import '../components/custom_seacrhdelegate.dart';

class SearchList extends StatefulWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSeacrhdelegate());
              },
              icon: Icon(Icons.search))
        ],
      ),
    );
  }
}
