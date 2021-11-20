import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'request_item.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 500,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Text(
              'Salada.com',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'IrishGrover',
                color: Colors.blueGrey,
                fontSize: 60,
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton.icon(
              label: const Text(
                'Realizar Pedido',
                style: TextStyle(
                  fontFamily: 'IrishGrover',
                  fontSize: 30,
                ),
              ),
              icon: const Icon(Icons.arrow_right_rounded),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RequestPage()));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  fixedSize: const Size(0, 70),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
        ],
      ),
    );
  }
}
