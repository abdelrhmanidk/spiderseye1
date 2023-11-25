import 'package:flutter/material.dart';

class household extends StatelessWidget {
  const household({super.key});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: const Text("HouseHold Supllies"),
      ),
      body: SizedBox(
        height: 30,
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('hi'),
              SizedBox(
                height: 30,
                width: 30,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
