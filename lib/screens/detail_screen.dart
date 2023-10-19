import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      splashRadius: 20,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Text(
                      "DETAIL",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 5,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        LineIcons.shoppingBag,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 18,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://m.media-amazon.com/images/I/61H-EYslpUL._UL1500_.jpg'),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(color: Colors.grey.shade700, width: 2),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade700, width: 2),
                  color: Colors.amberAccent.withOpacity(0.3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Casual Shirts",
                              style: TextStyle(
                                letterSpacing: 2,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "\$259",
                              style: TextStyle(
                                letterSpacing: 2,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: Text(
                                  'This enhanced stretch shirt provides maximum comfort and flexibility. Made with high-quality fabric, This shirt offers a tailored fit and modern design, perfect for any occasion.',
                                  style: TextStyle(
                                    color:
                                        Colors.grey.shade700.withOpacity(0.8),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: height / 0.8,
                              width: width / 2,
                              decoration: BoxDecoration(
                                color: Colors.amberAccent.shade100
                                    .withOpacity(0.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                border: Border.all(
                                  color: Colors.grey.shade700,
                                  width: 2,
                                ),
                              ),
                              child: Text(
                                "Buy Now",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 20,
                                  letterSpacing: 5,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: height / 0.8,
                              width: width / 6,
                              decoration: BoxDecoration(
                                color: Colors.amberAccent.shade100
                                    .withOpacity(0.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                border: Border.all(
                                  color: Colors.grey.shade700,
                                  width: 2,
                                ),
                              ),
                              child: Icon(LineIcons.heart),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
