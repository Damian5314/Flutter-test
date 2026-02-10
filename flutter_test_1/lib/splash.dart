import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'login.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    navigatetohome();
  }

  navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 5000), (() {}));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) {
      return LoginPage();
    })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.deepPurple,
          alignment: Alignment.center,
          child: Text('Druk appje'),
        ),
      ),
    );
  }
}