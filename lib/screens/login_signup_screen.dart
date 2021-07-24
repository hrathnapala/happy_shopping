import 'package:flutter/material.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({Key key}) : super(key: key);

  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/auth_image.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(.85),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                        text: "Happy",
                        style: TextStyle(
                            color: Colors.white, fontSize: width * 0.09),
                        children: [
                          TextSpan(
                            text: " Shopping",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: width * 0.09,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.25,
            child: Container(
              padding: EdgeInsets.all(20.0),
              width: width - 40,
              height: height * 0.4,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5.0)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3.0),
                        height: 2,
                        width: 55,
                        color: Colors.orange,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "SignUp",
                        style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[900]),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3.0),
                        height: 2,
                        width: 65,
                        color: Colors.orange,
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
