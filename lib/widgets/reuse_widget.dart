import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screen/payments_options.dart';

class rwidgets extends StatelessWidget {
  const rwidgets({required this.img, required this.tex, required this.pr});

  final img;
  final String tex;
  final String pr;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          margin: EdgeInsets.all(10),
          height: 240.00,
          width: 200.00,
          child: Column(
            children: [
              Image.network(img),
              SizedBox(
                height: 10.00,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 5.00,
                    backgroundColor: Color(0XFF685E71),
                  ),
                  SizedBox(
                    width: 3.00,
                  ),
                  CircleAvatar(
                    radius: 5.00,
                    backgroundColor: Color(0XFFF3E7CE),
                  ),
                  SizedBox(
                    width: 3.00,
                  ),
                  CircleAvatar(
                    radius: 5.00,
                    backgroundColor: Color(0XFFF2F4F4),
                  ),
                  SizedBox(
                    width: 3.00,
                  ),
                  CircleAvatar(
                    radius: 5.00,
                    backgroundColor: Color(0XFF4E4C4B),
                  ),
                ],
              ),
              SizedBox(
                height: 10.00,
              ),
              Text(
                tex,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              Text(pr),
              SizedBox(
                height: 5.00,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const paymentsop(),
                    ),
                  );
                },
                child: Text("Buy"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
