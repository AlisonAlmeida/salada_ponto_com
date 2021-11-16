import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ui/input_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/assets/imgs/background_home_page.jpg'),
              fit: BoxFit.cover),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Form(
              child: InputField(
                  const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  'Usuario'),
            ),
            Form(
              child: InputField(
                  const Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  'Senha'),
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    fixedSize: const Size(0, 70),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
