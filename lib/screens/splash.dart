import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/login.dart';

class screenSplash extends StatefulWidget {
  const screenSplash({Key? key}) : super(key: key);

  @override
  State<screenSplash> createState() => _screenSplashState();
}

class _screenSplashState extends State<screenSplash> {
  @override
  void initState() {
    gotologin();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
        'images/picc.jpg',
        height: 200,
      )),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotologin() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => screenlogin()));
  }
}
