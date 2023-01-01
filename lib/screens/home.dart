import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/login.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME SCREEN'),
        actions: [
          IconButton(
              onPressed: () {
                signout(context);
              },
              icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: SafeArea(child: Center(child: Text('home screen'))),
    );
  }

  signout(BuildContext ctx) {
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => screenlogin()), (route) => false);
  }
}
