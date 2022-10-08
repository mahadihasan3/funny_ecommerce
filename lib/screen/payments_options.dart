import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screen/payments_done_screen.dart';

class paymentsop extends StatefulWidget {
  const paymentsop({super.key});

  @override
  State<paymentsop> createState() => _paymentsopState();
}

class _paymentsopState extends State<paymentsop> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                height: 200.00,
                width: MediaQuery.of(context).size.width / 1.3,
                child: Image.network(
                    'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone14pro-digitalmat-gallery-5-202209?wid=364&hei=333&fmt=png-alpha&.v=1663346233360'),
              ),
            ),
            Text(
              "iphone 14 pro max",
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Color ",
                    style: TextStyle(fontSize: 15),
                  ),
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0XFF685E71),
                  ),
                  SizedBox(
                    width: 30.00,
                  ),
                  Text("128GB")
                ],
              ),
            ),
            Text(
              "Payments Options",
              style: TextStyle(fontSize: 20),
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked1,
                  onChanged: (value) {
                    setState(() {
                      isChecked1 = value!;
                    });
                  },
                ),
                Container(
                  height: 70,
                  width: 70,
                  // width: MediaQuery.of(context).size.width,
                  child: Image.network(
                      'http://static.businessworld.in/article/article_extra_large_image/1595326543_6gUo4B_EqQM6J1vRWLc5x7t3CKCr72m.jpeg'),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Container(
                  height: 70,
                  width: 70,
                  // width: MediaQuery.of(context).size.width,
                  child: Image.network(
                      'https://usa.visa.com/dam/VCOM/regional/ve/romania/blogs/hero-image/visa-logo-800x450.jpg'),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked2,
                  onChanged: (value) {
                    setState(() {
                      isChecked2 = value!;
                    });
                  },
                ),
                Container(
                  height: 50,
                  width: 50,
                  // width: MediaQuery.of(context).size.width,
                  child: Image.network(
                      'https://w7.pngwing.com/pngs/92/785/png-transparent-mastercard-logo-mastercard-credit-card-payment-visa-nyse-ma-mastercard-logo-text-logo-sign.png'),
                )
              ],
            ),
            SizedBox(
              height: 10.00,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const paydone()),
                );
              },
              child: Container(
                height: 50.00,
                width: 200.00,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.00),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    "Pay",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.00,
            )
          ],
        ),
      ),
    );
  }
}
