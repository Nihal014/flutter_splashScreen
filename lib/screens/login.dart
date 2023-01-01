import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/home.dart';

class screenlogin extends StatefulWidget {
  screenlogin({Key? key}) : super(key: key);

  @override
  State<screenlogin> createState() => _screenloginState();
}

class _screenloginState extends State<screenlogin> {
  final usernamecont = TextEditingController();

  final passcont = TextEditingController();

  bool isdatamatch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(38.0),
      child: Column(
        children: [
          TextFormField(
            controller: usernamecont,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'username'),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: passcont,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'password'),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                  visible: !isdatamatch,
                  child: Text(
                    'username password does not match',
                    style: TextStyle(color: Colors.red),
                  )),
              ElevatedButton(
                  onPressed: () {
                    checklogin(context);
                  },
                  child: Text('login')),
            ],
          )
        ],
      ),
    )));
  }

  void checklogin(BuildContext ctx) {
    final username = usernamecont.text;
    final password = passcont.text;
    if (username == password) {
      //go to home
      print('username and password matched');
      Navigator.of(ctx)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => ScreenHome()));
    } else {
      //popup snackbar
      final eror = 'username password does not match';
      ScaffoldMessenger.of(ctx).showSnackBar(
          SnackBar(backgroundColor: Colors.red, content: Text(eror)));
      setState(() {
        isdatamatch = false;
      });
    }
  }
}
