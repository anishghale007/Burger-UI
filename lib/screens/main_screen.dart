import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/screens/account_screen.dart';
import 'package:ui_project/screens/product_screen.dart';


const containerStyle = TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold);
const containerSubStyle = TextStyle(color: Color(0xFFBDC6D4), fontSize: 16, fontWeight: FontWeight.bold);
const selectedLabelStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
const unselectedLabelStyle = TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16);
const listViewStyle =  TextStyle(fontSize: 16, color: Colors.black);
const labelStyle1 = TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18);
const labelStyle2 =  TextStyle(color: Color(0xFFC7161C), fontSize: 16);


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: Icon(
          Icons.dehaze,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundColor: Color(0xFFC7161C),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
            ),
          )
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on_sharp, color: Color(0xFFC7161C), size: 30),
            Text(
              'Chicago IIL',
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ],
        ),
      ),
      body: ListView(children: [
        Stack(children: [
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 7, vertical: 0.2),
                child: Material(
                  elevation: 4.0,
                  child: Container(
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 25,
                        ),
                        hintText: 'Search our Delicious Burger',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFC5D0D8)),
                        contentPadding: EdgeInsets.only(left: 40),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 200,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color(0xFFC7161C),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 80,
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset('assets/images/burger.png'),
                            ),
                            Text(
                              'Burger',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                            SizedBox(height: 15),
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFFC7161C),
                                  size: 20,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(width: 23),
                      Container(
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              )
                            ]),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 80,
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset('assets/images/pizzas.png'),
                            ),
                            Text(
                              'Pizza',
                              style: listViewStyle,
                            ),
                            SizedBox(height: 15),
                            CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 15,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),)
                          ],
                        ),
                      ),
                      SizedBox(width: 23),
                      Container(
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              )
                            ]),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 80,
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset('assets/images/cake.jpg'),
                            ),
                            Text(
                              'Cake',
                              style: listViewStyle,
                            ),
                            SizedBox(height: 15),
                            CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 15,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),),
                          ],
                        ),
                      ),
                      SizedBox(width: 23),
                      Container(
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.6),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              )
                            ]),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 80,
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset('assets/images/noodles.jpg'),
                            ),
                            Text(
                              'Noodles',
                              style: listViewStyle,
                            ),
                            SizedBox(height: 15),
                            CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 15,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 20,
                                ),),
                          ],
                        ),
                      ),
                      SizedBox(width: 23)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular',
                        style: labelStyle1),
                    Text('View all >',
                        style: labelStyle2),
                  ],
                ),
              ),
              SizedBox(height: 28),
              InkWell(
                onTap: () {
                  Get.to(() => ProductScreen(), transition: Transition.leftToRight);
                },
                child: Container(
                  height: 250,
                  width: 380,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 155,
                        width: 340,
                        decoration: BoxDecoration(
                            color: Color(0xFFC7161C),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Chiptotle Cheesy Chicken',
                                style: containerStyle),
                            Text('Rs.100',
                                style: containerStyle),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Text('Chicken Burger',
                                style: containerSubStyle,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Get.to(() => ProductScreen(), transition: Transition.leftToRight);
                },
                child: Container(
                  height: 250,
                  width: 380,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 155,
                        width: 340,
                        decoration: BoxDecoration(
                            color: Color(0xFFC7161C),
                            borderRadius: BorderRadius.circular(15),),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Double Cheesy Chicken',
                                style: containerStyle),
                            Text('Rs.150',
                                style: containerStyle),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Text('Chicken Burger',
                                style: containerSubStyle)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                  radius: 120,
                  backgroundColor: Colors.transparent,
                  child: Hero(
                      tag: 'burger',
                      child: Image.asset('assets/images/menu-burger.png'))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600),
            child: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                  radius: 120,
                  backgroundColor: Colors.transparent,
                  child: Image.asset('assets/images/menu-burger.png')),
            ),
          ),
        ]),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedLabelStyle: selectedLabelStyle,
        unselectedLabelStyle: unselectedLabelStyle,
        selectedItemColor: Color(0xFFC7161C),
        unselectedItemColor: Colors.black,
        onTap: (value) {
          if (value == 0) Get.to(() => MainScreen());
          if (value == 2) Get.to(() => AccountScreen());
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
