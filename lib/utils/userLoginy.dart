import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../FarmerHome.dart';
import '../Register.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({Key key}) : super(key: key);

  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  var _username = TextEditingController();
  var _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.9),
            image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.07), BlendMode.dstATop),
              image: AssetImage("assets/fruits.jpg"),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Align(
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            radius: 85,
                            backgroundColor: Colors.white.withOpacity(0.5),
                            child: Text(
                              'EazyFarmer',
                              style: TextStyle(
                                  color: HexColor("#5EAD34"),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Buy & Sell Farm Market Produce',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 30, bottom: 5, left: 40),
                        child: Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 13 * textScale,
                            color: Color(0xFF0D1832),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 3, bottom: 5, left: 30, right: 30),
                      child: TextFormField(
                        style: TextStyle(
                            fontSize: 13 * textScale, color: Color(0xFF0D1832)),
                        maxLength: 30,
                        controller: _username,
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
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 5, bottom: 5, left: 40),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 13 * textScale,
                            color: Color(0xFF0D1832),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                        bottom: 10,
                        left: 30,
                        right: 30,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                            fontSize: 13 * textScale, color: Color(0xFF0D1832)),
                        maxLength: 30,
                        controller: _password,
                        //obscureText: securePassword,
                        obscuringCharacter: '*',
                        cursorColor: Color(0xFF0D1832),
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(
                              fontSize: 13 * textScale,
                              color: Color(0xFF0D1832)),
                          prefixIcon: Icon(
                            Icons.security,
                            color: Color(0xFF0D1832),
                          ),
                          suffixIcon: GestureDetector(
                            child: Icon(
                              Icons.remove_red_eye,
                              color: Color(0xFF0D1832),
                            ),
                            onTap: () {
                              setState(() {});

                              print('hello');
                            },
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF0D1832),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF0D1832),
                            ),
                          ),
                          focusColor: Color(0xFF0D1832),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, left: 40, right: 40),
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                              fontSize: 13 * textScale,
                              color: Color(0xFF0D1832),
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 5, left: 30, right: 30),
                          child: Container(
                            height: 56.0,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.white.withOpacity(0.5),
                                    Colors.white.withOpacity(0.5),
                                  ],
                                  begin: Alignment.centerRight,
                                  end: Alignment.centerLeft),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                              child: Center(
                                child: Text(
                                  "LOGIN",
                                  style: TextStyle(
                                    color: Color(0xFF0D1832),
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                            ),
                          )),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, left: 40, right: 40),
                        child: Container(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Don't have an account?"),
                                SizedBox(
                                  width: 10.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterPage()));
                                  },
                                  child: Center(
                                      child: Text(
                                    "SIGN UP",
                                    style:
                                        TextStyle(color: HexColor("#5EAD34")),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
