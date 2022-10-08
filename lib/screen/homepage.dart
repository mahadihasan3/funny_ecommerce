import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/widgets/reuse_widget.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.view_headline_outlined,
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Icon(
            Icons.shopping_bag_rounded,
            color: Colors.grey,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.00,
            ),
            Row(
              children: [
                rwidgets(
                  img:
                      'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone14pro-digitalmat-gallery-5-202209?wid=364&hei=333&fmt=png-alpha&.v=1663346233360',
                  tex: "Iphone 14 peo max",
                  pr: "\$1000",
                ),
                SizedBox(
                  width: 5.00,
                ),
                rwidgets(
                  img:
                      'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone13-digitalmat-gallery-3-202203?wid=364&hei=333&fmt=png-alpha&.v=1644988765122',
                  tex: "Iphone 14 peo ",
                  pr: "\$800",
                ),
              ],
            ),
            Row(
              children: [
                rwidgets(
                  img:
                      'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone14-digitalmat-gallery-3-202209?wid=364&hei=333&fmt=png-alpha&.v=1662055813794',
                  tex: "Iphone 14 ",
                  pr: "\$700",
                ),
                SizedBox(
                  width: 5.00,
                ),
                rwidgets(
                  img:
                      'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone12-digitalmat-gallery-2-202111?wid=364&hei=333&fmt=png-alpha&.v=1635178709000',
                  tex: "Iphone 14 mini",
                  pr: "\$600",
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
