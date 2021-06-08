import 'package:design/components/styles.dart';
import 'package:design/newScreen/BottomNavBar/bottomNavBarScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageSection(),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'LOG IN',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Hi there! Nice to see you again.',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    style: kOrderCardSubtitleStyle,
                    maxLines: 1,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: kMainColor,
                      ),
                      hintText: 'Email/Username',
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: kMainColor,
                          fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.centerRight,
                    width: double.infinity,
                    child: Text(
                      'Forgot Email/Username?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    style: kOrderCardSubtitleStyle,
                    maxLines: 1,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: kMainColor,
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          fontSize: 15,
                          color: kMainColor,
                          fontWeight: FontWeight.bold),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    alignment: Alignment.centerRight,
                    width: double.infinity,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavBarScreen()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kMainColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 320,
          width: double.infinity,
          child: Image.asset(
            'assets/profile_view/background.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 320,
          width: double.infinity,
          color: kMainColor.withOpacity(0.5),
        ),
        Positioned(
          bottom: 35,
          left: 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to',
                style: TextStyle(color: Colors.white, fontSize: 23),
              ),
              SizedBox(height: 2),
              Text(
                'Slyde.Delivery',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}
