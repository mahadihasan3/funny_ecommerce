import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class paydone extends StatelessWidget {
  const paydone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "you have only one kidney left,\n \ncz you already sell your one kidney to buy rtx 3060",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
