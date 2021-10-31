import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'request_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
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
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  // width: MediaQuery.of(context).size.width,
                  width: 500, height: 500,
                  //height: MediaQuery.of(context).size.height,
                  child: SvgPicture.asset(
                    'lib/assets/imgs/blob.svg',
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
              ],
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
                          builder: (context) => const RequestItem()));
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
      ),
    );
  }
}
