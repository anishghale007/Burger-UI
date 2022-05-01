import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_project/screens/main_screen.dart';


const listTileStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.blueGrey);
const listTileText = TextStyle(fontSize: 16, color: Colors.blueGrey, fontWeight: FontWeight.bold);
const accountText1 = TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18);
const accountText2 = TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFBDC6D4));
const selectedLabelStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
const unselectedLabelStyle = TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16);

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

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
              'title',
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                CircleAvatar(
                  child: Icon(Icons.account_circle_outlined,
                      color: Colors.white, size: 60),
                  backgroundColor: Color(0xFFC7161C),
                  radius: 60,
                ),
                SizedBox(height: 10),
                Text(
                  'Sobhakhar Poudel',
                  style: accountText1,
                ),
                Text(
                  '98-xxxxxx | test@gmail.com',
                  style: accountText2,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ACCOUNT',
                  style: listTileStyle,
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    'Profile',
                    style: listTileText,
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.star, color: Colors.blueGrey),
                  title: Text(
                    'Saved Address',
                    style: listTileText,
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.notifications, color: Colors.blueGrey),
                  title: Text(
                    'Notification',
                    style: listTileText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'OFFERS',
                  style: listTileStyle,
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    'Promos',
                    style: listTileText,
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.star, color: Colors.blueGrey),
                  title: Text(
                    'Get Discounts',
                    style: listTileText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SETTINGS',
                  style: listTileStyle,
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    'Themes',
                    style: listTileText,
                  ),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.blueGrey),
                  title: Text(
                    'Permissions',
                    style: listTileText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedLabelStyle: selectedLabelStyle,
        unselectedLabelStyle: unselectedLabelStyle,
        selectedItemColor: Color(0xFFC7161C),
        unselectedItemColor: Colors.black,
        currentIndex: 2,
        onTap: (value) {
          if (value == 0) Get.to(() => MainScreen(), transition: Transition.size);
          if (value == 2) Get.to(() => AccountScreen(), transition: Transition.size);
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
