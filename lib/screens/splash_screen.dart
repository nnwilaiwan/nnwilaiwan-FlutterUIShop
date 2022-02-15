import 'dart:async';
import 'package:flutter/material.dart';
import 'package:stylish/screens/constants.dart';
import 'package:stylish/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: widthScreen,
            height: heightScreen,
            // decoration: const BoxDecoration(
            //   borderRadius: BorderRadius.all(
            //     Radius.circular(10),
            //   ),
            // ),
            child: Image.asset(
              'assets/images/bg.jpg',
              height: heightScreen,
              fit: BoxFit.fill,
            ),
          ),
        
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(top:defaultPadding * 6),
            child: Text(
              "WelCome to\nMy Shop",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
