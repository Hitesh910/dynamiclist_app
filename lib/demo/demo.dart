import 'package:flutter/material.dart';

class Demo_page extends StatefulWidget {
  const Demo_page({super.key});

  @override
  State<Demo_page> createState() => _Demo_pageState();
}

class _Demo_pageState extends State<Demo_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HELLo",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                Text("hii",style: TextStyle(fontSize: 10),);
              });
            },
          )
        ],
      ),
    );
  }
}
