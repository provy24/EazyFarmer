import 'dart:async';
import 'dart:math';

import 'package:EazyFarmer/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'common.dart';

class HomePage extends StatefulWidget {
  final Constants constants;

  const HomePage({Key key, this.constants}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 0;
  bool home = true;
  bool crops = false;
  bool livestock = false;
  bool machinery = false;
  bool land = false;

  dynamic listImagesnotFound = [
    "assets/aa.jpg",
    "assets/fruits.jpg",
    "assets/cultivator.jpg",
    "assets/ac.jpg",
    "assets/ad.jpg"
  ];
  Random rnd;
  Image img() {
    int min = 0;
    int max = listImagesnotFound.length - 1;
    rnd = new Random();
    int r = min + rnd.nextInt(max - min);
    String image_name = listImagesnotFound[r].toString();
    currentImage = image_name;
    return Image.asset(image_name);
  }

  String currentImage = "assets/fruits.jpg";
  myDate() async {
    Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        img();
        print('\n------------------------------------\n');
      });
    });
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    myDate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0XFF29D091),
        //backgroundColor: Color(0xFF0D1832),
        currentIndex: _bottomNavIndex,
        onTap: (int index) {
          setState(() {
            _bottomNavIndex = index;
            print(_bottomNavIndex);
            if (_bottomNavIndex == 0) {
              home = true;
              crops = false;
              machinery = false;
              livestock = false;
              land = false;
            }
            if (_bottomNavIndex == 1) {
              home = false;
              crops = true;
              machinery = false;
              livestock = false;
              land = false;
            }
            if (_bottomNavIndex == 2) {
              home = false;
              crops = false;
              machinery = true;
              livestock = false;
              land = false;
            }
            if (_bottomNavIndex == 3) {
              home = false;
              crops = false;
              machinery = false;
              livestock = true;
              land = false;
            }
            if (_bottomNavIndex == 4) {
              home = false;
              crops = false;
              machinery = false;
              livestock = false;
              land = true;
            }
          });
        },
        items: [
          new BottomNavigationBarItem(
            title: new Text('Home'),
            icon: new Icon(Icons.home),
          ),
          new BottomNavigationBarItem(
            title: new Text('My Crops'),
            icon: new Icon(Icons.grain),
          ),
          new BottomNavigationBarItem(
            title: new Text('Machinery'),
            icon: new Icon(Icons.auto_awesome_motion),
          ),
          new BottomNavigationBarItem(
            title: new Text('Livestock'),
            icon: new Icon(Icons.ac_unit_rounded),
          ),
          new BottomNavigationBarItem(
            title: new Text('Land'),
            icon: new Icon(Icons.apartment),
          )
        ],
      ),
      drawer: Drawer(
          child: Center(
              child: Container(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  Center(
                    child: Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Color(0xFF0D1832),
                          child: Icon(
                            Icons.perm_contact_calendar,
                            size: 80,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text('Providence Chikukwa'),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      size: Constants().iconSize,
                      color: HexColor("#5EAD34"),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                    child: Text(
                      'Sell & Buy History',
                      style: TextStyle(
                          fontSize: Constants().textSize, color: Colors.black),
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.store_sharp,
                      size: Constants().iconSize,
                      color: Colors.orange,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                    child: Text(
                      'MarketPlaces',
                      style: TextStyle(
                          fontSize: Constants().textSize, color: Colors.black),
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.receipt_long_rounded,
                      size: Constants().iconSize,
                      color: Colors.indigo,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                    child: Text(
                      'My Customers',
                      style: TextStyle(
                          fontSize: Constants().textSize, color: Colors.black),
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.notifications_none_outlined,
                      size: Constants().iconSize,
                      color: Colors.orange,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                    child: Text(
                      'Notifications',
                      style: TextStyle(
                          fontSize: Constants().textSize, color: Colors.black),
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.settings,
                      size: Constants().iconSize,
                      color: HexColor("#5EAD34"),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                          fontSize: Constants().textSize, color: Colors.black),
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.help,
                      size: Constants().iconSize,
                      color: Colors.indigo,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                    child: Text(
                      'Help center',
                      style: TextStyle(
                          fontSize: Constants().textSize, color: Colors.black),
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.power_settings_new_sharp,
                      size: Constants().iconSize,
                      color: Colors.red,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          fontSize: Constants().textSize, color: Colors.red),
                    ),
                  ),
                ],
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ))),
      appBar: AppBar(
        backgroundColor: Color(0xFF0D1832),
        title: Text(
          'EazyFarmer',
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Visibility(
              child: Container(
                child: Column(
                  children: [
                    Wrap(
                      children: <Widget>[
                        ClipPath(
                          clipper: CustomAppBar(),
                          child: Container(
                            color: Color(0xFF0D1832),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(currentImage),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade300,
                            child: Icon(
                              Icons.account_circle_sharp,
                              color: Color(0xFF0D1832),
                              size: 40,
                            ),
                          ),
                          title: Text(
                            'Sales',
                            style: TextStyle(
                              fontSize: Constants().textSize,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0D1832),
                            ),
                          ),
                          subtitle: Text(
                            'Mr Zimbabwe bought your Compact Tractor for \$ 23.000',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_downward_rounded,
                              size: 30, color: Colors.orange),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade300,
                            child: Icon(
                              Icons.account_circle_sharp,
                              color: Color(0xFF0D1832),
                              size: 40,
                            ),
                          ),
                          title: Text(
                            'Sales',
                            style: TextStyle(
                              fontSize: Constants().textSize,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0D1832),
                            ),
                          ),
                          subtitle: Text(
                            'Mr Zimbabwe bought your Compact Tractor for \$ 23.000',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_downward_rounded,
                              size: 30, color: Colors.orange),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade300,
                            child: Icon(
                              Icons.account_circle_sharp,
                              color: Color(0xFF0D1832),
                              size: 40,
                            ),
                          ),
                          title: Text(
                            'Sales',
                            style: TextStyle(
                              fontSize: Constants().textSize,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0D1832),
                            ),
                          ),
                          subtitle: Text(
                            'Mr Zimbabwe bought your Compact Tractor for \$ 23.000',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_downward_rounded,
                              size: 30, color: Colors.orange),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade300,
                            child: Icon(
                              Icons.account_circle_sharp,
                              color: Color(0xFF0D1832),
                              size: 40,
                            ),
                          ),
                          title: Text(
                            'Sales',
                            style: TextStyle(
                              fontSize: Constants().textSize,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0D1832),
                            ),
                          ),
                          subtitle: Text(
                            'Mr Zimbabwe bought your Compact Tractor for \$ 23.000',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_downward_rounded,
                              size: 30, color: Colors.orange),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade300,
                            child: Icon(
                              Icons.account_circle_sharp,
                              color: Color(0xFF0D1832),
                              size: 40,
                            ),
                          ),
                          title: Text(
                            'Sales',
                            style: TextStyle(
                              fontSize: Constants().textSize,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF0D1832),
                            ),
                          ),
                          subtitle: Text(
                            'Mr Zimbabwe bought your Compact Tractor for \$ 23.000',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_downward_rounded,
                              size: 30, color: Colors.orange),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              visible: home,
            ),
            Visibility(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.9),
                      image: DecorationImage(
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.18), BlendMode.dstATop),
                        image: AssetImage(
                            "assets/peter-wendt--r5KSMkyoSc-unsplash.jpg"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Let your customers see what you have.\nAdd Crop to your stock',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Crop Type',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Crop Name',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Packaging Type {Kgs / Tonnes}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Crop Description',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Price Per {Kg / Tonne}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 200, top: 10, right: 20),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 56.0,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF0D1832),
                                          Color(0xFF0D1832),
                                        ],
                                        begin: Alignment.centerRight,
                                        end: Alignment.centerLeft),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                    },
                                    child: Center(
                                      child: Text(
                                        "Add Crop to List",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 200, top: 10, right: 20),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 250.0,
                                ))),
                      ],
                    )),
              ),
              visible: crops,
            ),
            Visibility(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.9),
                      image: DecorationImage(
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.18), BlendMode.dstATop),
                        image: AssetImage(
                            "assets/istockphoto-483452183-612x612.jpg"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Sell Or Lease your farming machinery\nAdd Machinery to your stock',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Farming equipment name',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Equipment Description',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Equipment availability {Sell / Lease}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Lease period {Weekly/ Monthly}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Leasing Price Per {Week / Month}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 200, top: 10, right: 20),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 56.0,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF0D1832),
                                          Color(0xFF0D1832),
                                        ],
                                        begin: Alignment.centerRight,
                                        end: Alignment.centerLeft),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                    },
                                    child: Center(
                                      child: Text(
                                        "Add Crop to List",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 200, top: 10, right: 20),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 250.0,
                                ))),
                      ],
                    )),
              ),
              visible: machinery,
            ),
            Visibility(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.9),
                      image: DecorationImage(
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.18), BlendMode.dstATop),
                        image: AssetImage(
                            "assets/annie-spratt-yupAfXHlXQE-unsplash.jpg"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Sell the livestock you have reared to your customers.\nAdd Livestock to your stock',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Types of livestock',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Name of livestock',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Livestock Description',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Price Per {Kg / Tonne}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Attach a picture for your livestock',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 200, top: 10, right: 20),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 56.0,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF0D1832),
                                          Color(0xFF0D1832),
                                        ],
                                        begin: Alignment.centerRight,
                                        end: Alignment.centerLeft),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                    },
                                    child: Center(
                                      child: Text(
                                        "Add Crop to List",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 200, top: 10, right: 20),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 250.0,
                                ))),
                      ],
                    )),
              ),
              visible: livestock,
            ),
            Visibility(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.9),
                      image: DecorationImage(
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.18), BlendMode.dstATop),
                        image: AssetImage(
                            "assets/todd-kent-z5JEUsv31Qw-unsplash.jpg"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Earn something from the piece of land you have.\nAdd Advertise your land',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Types of livestock',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Name of livestock',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Livestock Description',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Price Per {Kg / Tonne}',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(left: 20, top: 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Attach a picture for your livestock',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF0D1832),
                                ),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xFF0D1832)),
                                maxLength: 30,
                                //controller: _username,
                                cursorColor: Color(0xFF0D1832),
                                decoration: InputDecoration(
                                    hintText: 'Enter your username',
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.account_circle,
                                      color: Color(0xFF0D1832),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 200, top: 10, right: 20),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 56.0,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF0D1832),
                                          Color(0xFF0D1832),
                                        ],
                                        begin: Alignment.centerRight,
                                        end: Alignment.centerLeft),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                    },
                                    child: Center(
                                      child: Text(
                                        "Add Crop to List",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ))),
                        Padding(
                            padding: const EdgeInsets.only(
                                left: 200, top: 10, right: 20),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 250.0,
                                ))),
                      ],
                    )),
              ),
              visible: land,
            )
          ],
        ),
      )),
    );
  }
}
