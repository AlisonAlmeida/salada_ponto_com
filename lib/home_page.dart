import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'request_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/imgs/background_home_page.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
<<<<<<< HEAD
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
=======
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueGrey,
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(0, 2))
                    ],
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
>>>>>>> 961898c07047d4f9839542d4b1b4b90c4804b062
                ),
              ),
            ),
            RotationTransition(
              turns: const AlwaysStoppedAnimation(15 / 360),
              child: Container(
                constraints:
                    const BoxConstraints(maxWidth: 300, maxHeight: 300),
                child: Image.asset('lib/assets/imgs/salada_homepage.png'),
              ),
            ),
            Padding(
<<<<<<< HEAD
              padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
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
                          builder: (context) => const RequestItem()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    fixedSize: const Size(0, 70),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
=======
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    onPrimary: Colors.white,
                    shadowColor: Colors.black,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: const Size(100, 60),
                  ),
                  onPressed: () {},
                  child: const Text('Fazer pedido'),
                )),
>>>>>>> 961898c07047d4f9839542d4b1b4b90c4804b062
          ],
        ),
      ),
    );
  }
}
