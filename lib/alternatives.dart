import 'package:scanner310/chips.dart';
import 'package:flutter/material.dart';
import 'package:scanner310/cola.dart';
import 'package:scanner310/household.dart';
import 'package:scanner310/juice.dart';

class alternatives extends StatelessWidget {
  const alternatives({super.key});
//get _scanBarcode => null;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: const Text("Alternatives"),
        backgroundColor: Colors.white,
        //backgroundColor: Gradient.linear(, to, Color(40)),
        //backgroundColor: Color.fromARGB(255,, g, b),
      ),
      body: SizedBox(
        // height: 30,
        width: double.infinity,
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //juice//

              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const juice()),
                    );
                  },
                  child: const Text('Juice')),

              //chips//

              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const chips()),
                    );
                  },
                  child: const Text('Chips')),

              //cola//

              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const cola()),
                    );
                  },
                  child: const Text('Cola')),

              //household supplies//

              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const household()),
                    );
                  },
                  child: const Text('HouseHold Supplies')),
            ],
          ),
        ),
      ),
    ));
  }
}
