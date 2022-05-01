import 'package:flutter/material.dart';

const productLabel1 = TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black);
const productLabel2 = TextStyle(fontSize: 16, color: Color(0xFFBDC6D4), fontWeight: FontWeight.bold);


class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        body: Stack(
          children: [
            Container(
              height: 560,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(250),
                      bottomRight: Radius.circular(250)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(1, 5),
                    )
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: Card(
                            color: Colors.white,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          child: Card(
                            color: Colors.white,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: Icon(
                              Icons.favorite_outline,
                              color: Color(0xFFC7161C),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 27),
                  Text(
                    'Chipotle Cheesy Chicken',
                    style: productLabel1,
                  ),
                  SizedBox(height: 13),
                  Text(
                    'A signature flame-grilled chicken patty topped',
                    style: productLabel2,
                  ),
                  Text(
                    'with smoked beef',
                    style: productLabel2,
                  ),
                  SizedBox(height: 50),
                  Container(
                    height: 250,
                    width: 250,
                    child: Hero(
                        tag: 'burger',
                        child: Image.asset('assets/images/menu-burger.png')),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 230, right: 270),
              child: Align(
                child: Container(
                  height: 60,
                  width: 60,
                  child: Card(
                    color: Colors.white,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(child: Text('S', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),))
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 230, left: 270),
              child: Align(
                child: Container(
                  height: 60,
                  width: 60,
                  child: Card(
                      color: Colors.white,
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(child: Text('L', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),))
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 320),
              child: Align(
                child: Container(
                  height: 60,
                  width: 60,
                  child: Card(
                      color: Colors.white,
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(child: Text('M', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),))
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 660),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFFDB7175),
                    child: Icon(Icons.add, color: Colors.black,),
                  ),
                  SizedBox(width: 28),
                  Text('4', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                  SizedBox(width: 28),
                  CircleAvatar(
                    backgroundColor: Color(0xFFDB7175),
                    child: Icon(Icons.remove, color: Colors.black,),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 770, left: 10),
                  child: Column(
                    children: [
                      Text('Price', style: TextStyle(color: Colors.blueGrey, fontSize: 16,),),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('Rs.140', style: productLabel1,),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 730, left: 188),
                  child: Container(
                    height: 70,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Color(0xFFC7161C),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20),)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_bag_outlined, color: Colors.white,),
                        SizedBox(width: 5),
                        Text('Go to Cart', style: TextStyle(color: Colors.white, fontSize: 14),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
