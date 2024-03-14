import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic List"),
        centerTitle: true,
        backgroundColor: const Color(0xff254d61),
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                i++;
              });
            },
            child: const Icon(Icons.add),
          ),
          InkWell(
            onTap: () {
              setState(() {
                i--;
              });
            },child: const Icon(Icons.remove),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            children: List.generate(
          i,
          (index) => Container(
            margin: const EdgeInsets.all(5),
            height: 100,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                color: index % 2 == 0 ? const Color(0xff75e2ff) : const Color(0xff5689c0),
                borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            child: Text(
              "$index",
              style: const TextStyle(fontSize: 25),
            ),
          ),
        )),
      ),
    ));
  }
}
